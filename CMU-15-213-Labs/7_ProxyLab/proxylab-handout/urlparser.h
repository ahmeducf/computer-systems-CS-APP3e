typedef struct url_info {
    char *protocol;
    char *host;
    char *port;
    char *path;
} URL_INFO; 

URL_INFO *parse_url(URL_INFO *info, const char *url);