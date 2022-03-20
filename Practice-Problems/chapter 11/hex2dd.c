#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <unistd.h>
#include <string.h>
#include <ctype.h>
#include <setjmp.h>
#include <signal.h>
#include <dirent.h>
#include <sys/time.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <errno.h>
#include <math.h>
#include <pthread.h>
#include <semaphore.h>
#include <sys/socket.h>
#include <netdb.h>
#include <netinet/in.h>
#include <arpa/inet.h>

#define MAXBUF   8192  /* Max I/O buffer size */



int main(int argc, char *argv[]) { // ./hex2dd 0x8002c2f2

    struct in_addr inaddr;  /* Address in network byte order */
    uint32_t addr;          /* Address in host byte order */
    char buf[MAXBUF];       /* Buffer for dotted-decimal string */
    
    if (argc != 2) {
        fprintf(stderr, "usage: %s <hex number in Host-Byte-Order>\n", argv[0]);
        exit(0);
    }

    sscanf(argv[1], "%x", &addr);
    inaddr.s_addr = htonl(addr);

    printf("Host-Byte-Order:      0x%x\n", addr);
    printf("Network-Byte-Order:   0x%x\n", inaddr.s_addr);

    if (!inet_ntop(AF_INET, &inaddr, buf, MAXBUF))
        printf("inet_ntop");

    printf("%s\n", buf);

    exit(0);
}