#include "csapp.h"
#include "urlparser.h"
#include "sbuf.h"

#define CACHE_USED

/* Recommended max cache and object sizes */
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400
#define CACHE_LINE_NUM (MAX_CACHE_SIZE / MAX_OBJECT_SIZE)

static const char *user_agent_hdr = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";

unsigned long cur_time = 0;                       /* Used to update timestamp */
int cache_line_readcnt[CACHE_LINE_NUM];           /* number of readers per cache line */

sem_t mutex_readcnt[CACHE_LINE_NUM];              /* Lock read_cnt per cache line */
sem_t mutex_writing_chace_line[CACHE_LINE_NUM];   /* lock cache_line while writing on it */

sbuf_t sbuf;               /* Shared buffer of connected descriptors */

/* Defined structs */
typedef struct cache_line {
    char content[MAX_OBJECT_SIZE];    /* Stored web object */
    int length;                       /* Actual length of web object */
    unsigned long long timestamp;     /* To perform LRU */
    size_t hash;                      /* Hash value of the request header */
    int valid_bit;                    /* Valid bit */
} cache_line_t;


/* Functions prototypes */
void serve_client(int connfd, cache_line_t *cache);
void service_from_cache(int connfd, cache_line_t *cache, size_t matched_line_idx);
void service_from_server(int connfd, URL_INFO url_info, char *parsed_request, 
                            cache_line_t *cache, size_t HTTP_request_hash);
int connect_server(URL_INFO url_info, char *parsed_request, int connfd, char *cache_buf);
int read_HTTP_request(int connfd, URL_INFO *url_infop, char *headers);
int read_request_line(rio_t *rp, URL_INFO *url_infop, char *parsed_request);
void read_request_headers(rio_t *rp, char *headers, URL_INFO *url_infop);
void check_important_headers(char *header, int *important_headers_flag);
void clienterror(int fd, char *cause, char *errnum, 
		 char *shortmsg, char *longmsg);

void semaphore_init();
void cache_init(cache_line_t **cachep);
void write_cache(cache_line_t *cache, char *cache_buf, int object_size, size_t hash);
int is_cached(cache_line_t *cache, size_t target);
size_t hash(char *HTTP_request);
size_t hash_func(char *str);

void *thread(void *vargp);

int main(int argc, char *argv[])
{
    int listenfd, connfd;
    char hostname[MAXLINE], port[MAXLINE];
    socklen_t clientlen;
    struct sockaddr_storage clientaddr;
    pthread_t tid;
    cache_line_t *cache = NULL;

    /* Check command line args */
    if (argc != 2) {
        fprintf(stderr, "usage: %s <port>\n", argv[0]);
        exit(1);
    }

    /* Ignore SIGPIPE signal */
    Signal(SIGPIPE, SIG_IGN);

    listenfd = Open_listenfd(argv[1]);
    printf("Proxy listening on port: %d\n", listenfd);

    /* Initialize cache */
    cache_init(&cache);

    /* Initialize semaphores */
    semaphore_init();

    sbuf_init(&sbuf, SBUFSIZE);
    for (int i = 0; i < NTHREADS; ++i)  /* Create worker threads */
        Pthread_create(&tid, NULL, thread, cache);

    while (1)
    {
        clientlen = sizeof(clientaddr);
        connfd = Accept(listenfd, (SA *)&clientaddr, &clientlen);
        Getnameinfo((SA *) &clientaddr, clientlen, hostname, MAXLINE, port, MAXLINE, 0);
        printf("Accepted connection from (%s, %s)\n", hostname, port);
        ++cur_time;        /* Update time */
        sbuf_insert(&sbuf, connfd);
    }
    Free(cache);
    Close(listenfd);
    exit(0);
}

/*
 * thread - Helper function spawns a new thread to handle each new connection
 *          request. The thread runs in detached mode to be reaped
 *          automatically by the kernal after finishing.
 */
void *thread(void *vargp)
{
    Pthread_detach(pthread_self());
    cache_line_t *cache = (cache_line_t *)vargp;
    while (1) {
        int connfd = sbuf_remove(&sbuf);
        serve_client(connfd, cache);
        Close(connfd);
    }
    return NULL;
}

/*
 * serve_client - handle one HTTP request/response transaction
 */
/* $begin serve_client */
void serve_client(int connfd, cache_line_t *cache) 
{
    URL_INFO url_info;
    char parsed_request[MAXLINE];
    size_t HTTP_request_hash;
    int matched_line_idx;

    /* Read request line and headers from the client */
    if (read_HTTP_request(connfd, &url_info, parsed_request) < 0)
        return;

    HTTP_request_hash = hash(parsed_request);
    printf("\n<-- Parsed request [hash = %lu] -->\n%s",
           HTTP_request_hash, parsed_request);

#ifdef CACHE_USED
    if ((matched_line_idx = is_cached(cache, HTTP_request_hash)) >= 0) {
        printf("<-- Cache Hit! -->\n");
        /* Read object from cache */
        printf("<-- service from cache -->\n");
        service_from_cache(connfd, cache, matched_line_idx);
    }
    else {
        printf("Cache miss!\n");
        /* Forward request on to the server */
        printf("<-- service from server -->\n");
        service_from_server(connfd, url_info, parsed_request, 
                                cache, HTTP_request_hash);
    }
#else
    cache_buf[MAX_OBJECT_SIZE]
    /* Forward request on to the server */
    connect_server(url_info, parsed_request, connfd, cache_buf);
#endif
}
/* $end serve_client */

int connect_server(URL_INFO url_info, char *parsed_request, int connfd, char *cache_buf)
{
    int clientfd;
    int total = 0;
    char *host, *port, buf[MAXBUF];
    rio_t rio;
    ssize_t nread;
    
    host = url_info.host;
    port = url_info.port;
    if (!host || !port) return 0;
    if ((clientfd = open_clientfd(host, port)) < 0) {
        char msg[MAXLINE];
        sprintf(msg, "Server lookup failure:\t(%s:%s), Name or service not known", host, port);
        printf("<-- Can't connect server -->\n");
        clienterror(connfd, "GET", "400", "Bad request", msg);
        return 0;
    }

    printf("Connection sent to host %s on port %s\n", host, port);

    Rio_readinitb(&rio, clientfd);
    /* Send request line and headers to the server */
    Rio_writen(clientfd, parsed_request, strlen(parsed_request));

    /* Read server's response and forward it to client */
    while ((nread = Rio_readnb(&rio, buf, MAXBUF)) > 0) {
        Rio_writen(connfd, buf, nread);
        Rio_writen(STDOUT_FILENO, buf, nread);
        // printf("%*.*s", (int)nread, (int)nread, buf);

#ifdef CACHE_USED
        if ((total + nread) < MAX_OBJECT_SIZE) {
            memcpy(cache_buf + total, buf, nread);
            total += nread;
        }
#endif
    }
    Close(clientfd); 
    return total;
}

/*
 * read_request_line - read HTTP request line and parse
 *         url into url_info struct
 */
/* $begin read_request_line */
int read_request_line(rio_t *rp, URL_INFO *url_infop, char *parsed_request)
{
    char buf[MAXLINE], method[MAXLINE], url[MAXLINE], version[MAXLINE];

    /* Read request line*/
    if (Rio_readlineb(rp, buf, MAXLINE) == 0){
        return -1;
    }
    printf("%s", buf);
    /* Parse request line*/
    sscanf(buf, "%s %s %s", method, url, version);
    // Check request method
    if (strcasecmp(method, "GET")) {
        clienterror(rp->rio_fd, method, "501", "Not Implemented",
                    "Our proxy does not implement this method");
        return -1;
    }
    // Check HTTP version
    if (strcmp("HTTP/1.0", version) && strcmp("HTTP/1.1", version)) {
        clienterror(rp->rio_fd, version, "400", "Bad request",
                    "Invalid HTTP version");
        return -1;
    } else {
        strcpy(version, "HTTP/1.0");
    }

    parse_url(url_infop, url);
    if (!url_infop) {
        clienterror(rp->rio_fd, url, "400", "Bad request",
                    "Invalid URI");
        return -1;
    }

    sprintf(parsed_request, "%s %s %s\r\n", method, url_infop->path, version);
    return 0;
}
/* $end read_request_line */

/*
 * read_HTTP_request - read HTTP line and headers from client
 *      and return url_info and manipulated request headers
 *      ready to be sent to the server
 */
/* $begin read_HTTP_request */
int read_HTTP_request(int connfd, URL_INFO *url_infop, char *parsed_request)
{
    rio_t rio;
    Rio_readinitb(&rio, connfd);
    if (read_request_line(&rio, url_infop, parsed_request) < 0)
        return -1;

    read_request_headers(&rio, parsed_request, url_infop);
    return 0;
}
/* $end read_HTTP_request */

/*
 * check_important_headers - Helper function check for
 *      important headers [Host,User-Agent,Connection,Proxy-Connection]
 */
/* $begin check_important_headers */
void check_important_headers(char *header, int *important_headers_flag)
{
    char buf[MAXLINE];  /* Copy of the header line */
    strcpy(buf, header);

    char *p = strchr(buf, ':');
    if (!p) return;

    *p = '\0';
    char header_title[MAXLINE]; 
    strcpy(header_title, buf);

    if (!strcasecmp(header_title, "Host"))
        important_headers_flag[0] = 1;
    else if (!strcasecmp(header_title, "User-Agent"))
        important_headers_flag[1] = 1;
    else if (!strcasecmp(header_title, "Connection")) {
        important_headers_flag[2] = 1;
        strcpy(header, "Connection: close\r\n");        /* Always send connection: close */
    }
    else if (!strcasecmp(header_title, "Proxy-Connection")) {
        important_headers_flag[3] = 1;
        strcpy(header, "Proxy-Connection: close\r\n");  /* Always send Proxy-Connection: close */
    }
}
/* $end check_important_headers */

/*
 * read_request_headers - read HTTP request headers from the client
 *      and manipulate them to be sent to the server. It makes sure
 *      to append [Host,User-Agent,Connection,Proxy-Connection]
 *      headers if not sent with the request headers from the client
 */
/* $begin read_request_headers*/
void read_request_headers(rio_t *rp, char* parsed_request, URL_INFO *url_infoP) 
{
    char buf[MAXLINE];
    /* [0]: Host    [1]: User-Agent     [2]: Connection     [3]: Proxy-Connection */
    int important_headers_flag[5] = {0,0,0,0,0};
    char header[MAXLINE];

    Rio_readlineb(rp, buf, MAXLINE);
    check_important_headers(buf, important_headers_flag);
    while(strcmp(buf, "\r\n")) {
        strcat(parsed_request, buf);
        Rio_readlineb(rp, buf, MAXLINE);
        check_important_headers(buf, important_headers_flag);
    }

    /* Append important headers if not sent from the client */
    for (int i = 0; i < 4; i++) {
        if (!important_headers_flag[i]) {
            switch (i)
            {
                case 0:
                {
                    sprintf(header, "Host: ");
                    sprintf(header, "%s%s\r\n", header, url_infoP->host);
                    strcat(parsed_request, header);
                    break;
                }
                case 1:
                {
                    sprintf(header, "User-Agent: ");
                    sprintf(header, "%s%s", header, user_agent_hdr);
                    strcat(parsed_request, header);
                    break;
                }
                case 2:
                {
                    sprintf(header, "Connection: ");
                    sprintf(header, "%sclose\r\n", header);
                    strcat(parsed_request, header);
                    break;
                }
                case 3:
                {
                    sprintf(header, "Proxy-Connection: ");
                    sprintf(header, "%sclose\r\n", header);
                    strcat(parsed_request, header);
                    break;
                }
                default:
                    break;
            }
        }
    }
    strcat(parsed_request, buf);
}
/* $end read_request_headers */

/*
 * parse_url - get plain URL and parse it into
 *      [protocol,host,port,path] in a URL_INFO struct
 */
/* $begin parse_url */
URL_INFO *parse_url(URL_INFO *info, const char *url)
{
    char *save_ptr;
    if (!info || !url)
        return NULL;

    info->protocol = __strtok_r(strcpy((char *)malloc(strlen(url) + 1), url),
                            "://", &save_ptr);
    info->host = strstr(url, "://");

    if (info->host) {
        info->host += 3;
        char *host_port_path = strcpy((char *)calloc(1, strlen(info->host) + 1),
                                      info->host);
        info->host = __strtok_r(host_port_path, ":", &save_ptr);
        info->host = __strtok_r(host_port_path, "/", &save_ptr);
    } else {
        char *host_port_path = strcpy((char *)calloc(1, strlen(url) + 1), url);
        info->host = __strtok_r(host_port_path, ":", &save_ptr);
        info->host = __strtok_r(host_port_path, "/", &save_ptr);
    }
    char *URL = strcpy((char *)malloc(strlen(url) + 1), url);
    info->port = strstr(URL + 6, ":");
    char *port_path = 0;
    char *port_path_copy = 0;
    if (info->port && isdigit(*(port_path = (char *)info->port + 1))) {
        port_path_copy = strcpy((char *)malloc(strlen(port_path) + 1),
                                port_path);
        char *r = __strtok_r(port_path, "/", &save_ptr);
        if (r)
            info->port = r;
        else
            info->port = port_path;
    } else
        info->port = "80";
    if (port_path_copy)
        info->path = port_path_copy + strlen(info->port ? info->port : "");
    else {
        char *path = strstr(URL + 8, "/");
        info->path = path ? path : "/";
    }
    int r = strcmp(info->protocol, info->host) == 0;
    if (r && strcmp(info->port, "80") == 0)
        info->protocol = "http";
    else if (r)
        info->protocol = "tcp";
    return info;
}
/* $end parse_url */


/*
 * clienterror - returns an error message to the client
 */
/* $begin clienterror */
void clienterror(int fd, char *cause, char *errnum, 
		 char *shortmsg, char *longmsg) 
{
    char buf[MAXLINE];

    /* Print the HTTP response headers */
    sprintf(buf, "HTTP/1.0 %s %s\r\n", errnum, shortmsg);
    Rio_writen(fd, buf, strlen(buf));
    sprintf(buf, "Content-type: text/html\r\n\r\n");
    Rio_writen(fd, buf, strlen(buf));

    /* Print the HTTP response body */
    sprintf(buf, "<html><title>Proxy Error</title>");
    Rio_writen(fd, buf, strlen(buf));
    sprintf(buf, "<body bgcolor=""ffffff"">\r\n");
    Rio_writen(fd, buf, strlen(buf));
    sprintf(buf, "%s: %s\r\n", errnum, shortmsg);
    Rio_writen(fd, buf, strlen(buf));
    sprintf(buf, "<p>%s: %s\r\n", longmsg, cause);
    Rio_writen(fd, buf, strlen(buf));
    sprintf(buf, "<hr><em>Web Proxy</em>\r\n");
    Rio_writen(fd, buf, strlen(buf));
}
/* $end clienterror */

void cache_init(cache_line_t **cachep) {
    int i;
    cache_line_t *p;

    *cachep = Calloc(CACHE_LINE_NUM, sizeof(cache_line_t));
    for (p = *cachep, i = 0; i < CACHE_LINE_NUM; ++i, ++p) {
        p->length = 0;
        p->timestamp = 0;
        p->hash = 0;
        p->valid_bit = 0;
    }
}

void semaphore_init() {
    for (int i = 0; i < CACHE_LINE_NUM; ++i) {
        cache_line_readcnt[i] = 0;
    }

    for (int i = 0; i < CACHE_LINE_NUM; ++i) {
        sem_init(&mutex_readcnt[i], 0, 1);
    }
    for (int i = 0; i < CACHE_LINE_NUM; ++i) {
        sem_init(&mutex_writing_chace_line[i], 0, 1);
    }
}

size_t hash_func(char *str) {
    unsigned long res = 5381;
    int c;

    while ((c = *(str++)))
        res = ((res << 5) + res) + c; /* hash * 33 + c */

    return res;
}

size_t hash(char *HTTP_request)
{
    return hash_func(HTTP_request);
} 

int is_cached(cache_line_t *cache, size_t target) {
    int i;
    cache_line_t *p;
    for (p = cache, i = 0; i < CACHE_LINE_NUM; ++i, ++p) {
        if (p->valid_bit == 1 && p->hash == target) {
            P(&mutex_writing_chace_line[i]);
            p->timestamp = cur_time;
            V(&mutex_writing_chace_line[i]);
            return i;
        }
        
    }
    return -1;
}

int get_write_idx(cache_line_t *cache) {
    int i;
    cache_line_t *p;
    unsigned long lru_time = __UINT64_MAX__;
    int lru_idx;

    for (p = cache, i = 0; i < CACHE_LINE_NUM; ++i, ++p) {
        if (p->valid_bit == 0) {
            return i;
        } else {
            if (p->timestamp < lru_time) {
                lru_time = p->timestamp;
                lru_idx = i;
            }
        }
    } 

    return lru_idx;
}

void write_cache(cache_line_t *cache, char *cache_buf, int object_size, size_t hash)
{
    printf("Writing to cache!\n");
    int write_idx = get_write_idx(cache);

    P(&mutex_writing_chace_line[write_idx]);
    memcpy((cache + write_idx)->content, cache_buf, object_size);
    (cache + write_idx)->length = object_size;
    (cache + write_idx)->timestamp = cur_time;
    (cache + write_idx)->hash = hash;
    (cache + write_idx)->valid_bit = 1;
    V(&mutex_writing_chace_line[write_idx]);
}

void service_from_cache(int connfd, cache_line_t *cache, size_t matched_line_idx)
{
    P(&mutex_readcnt[matched_line_idx]);
    cache_line_readcnt[matched_line_idx]++;
    if (cache_line_readcnt[matched_line_idx] == 1) {        /* First in */
        P(&mutex_writing_chace_line[matched_line_idx]);
    }
    V(&mutex_readcnt[matched_line_idx]);

    /* Read content from cahce */
    char *content = (cache + matched_line_idx)->content;
    int length = (cache + matched_line_idx)->length;
    printf("%s\n", content);
    Rio_writen(connfd, content, length);

    P(&mutex_readcnt[matched_line_idx]);
    cache_line_readcnt[matched_line_idx]--;
    if (cache_line_readcnt[matched_line_idx] == 0) {        /* Last out */
        V(&mutex_writing_chace_line[matched_line_idx]);
    }
    V(&mutex_readcnt[matched_line_idx]);
}

void service_from_server(int connfd, URL_INFO url_info, char *parsed_request, 
                            cache_line_t *cache, size_t HTTP_request_hash)
{
    char cache_buf[MAX_OBJECT_SIZE];
    printf("<-- service from server directly -->\n");
    int object_size = connect_server(url_info, parsed_request, connfd, cache_buf);
    /* Write object to cache */
    if (object_size < MAX_OBJECT_SIZE && object_size > 0) {
        write_cache(cache, cache_buf, object_size, HTTP_request_hash);
    }
}

/* Create an empty, bounded, shared FIFO buffer with n slots */
/* $begin sbuf_init */
void sbuf_init(sbuf_t *sp, int n)
{
    sp->buf = Calloc(n, sizeof(int)); 
    sp->n = n;                       /* Buffer holds max of n items */
    sp->front = sp->rear = 0;        /* Empty buffer if front == rear */
    Sem_init(&sp->mutex, 0, 1);      /* Binary semaphore for locking */
    Sem_init(&sp->slots, 0, n);      /* Initially, buf has n empty slots */
    Sem_init(&sp->items, 0, 0);      /* Initially, buf has zero data items */
}
/* $end sbuf_init */

/* Clean up buffer sp */
/* $begin sbuf_deinit */
void sbuf_deinit(sbuf_t *sp)
{
    Free(sp->buf);
}
/* $end sbuf_deinit */

/* Insert item onto the rear of shared buffer sp */
/* $begin sbuf_insert */
void sbuf_insert(sbuf_t *sp, int item)
{
    P(&sp->slots);                          /* Wait for available slot */
    P(&sp->mutex);                          /* Lock the buffer */
    sp->buf[(++sp->rear)%(sp->n)] = item;   /* Insert the item */
    V(&sp->mutex);                          /* Unlock the buffer */
    V(&sp->items);                          /* Announce available item */
}
/* $end sbuf_insert */

/* Remove and return the first item from buffer sp */
/* $begin sbuf_remove */
int sbuf_remove(sbuf_t *sp)
{
    int item;
    P(&sp->items);                          /* Wait for available item */
    P(&sp->mutex);                          /* Lock the buffer */
    item = sp->buf[(++sp->front)%(sp->n)];  /* Remove the item */
    V(&sp->mutex);                          /* Unlock the buffer */
    V(&sp->slots);                          /* Announce available slot */
    return item;
}
/* $end sbuf_remove */
/* $end sbufc */