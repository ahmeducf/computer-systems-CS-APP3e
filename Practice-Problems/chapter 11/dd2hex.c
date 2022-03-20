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

int main(int argc, char **argv){ // ./dd2hex 107.212.122.205

    struct in_addr inaddr;      /* Address in network byte order */

    if (argc != 2) {
        fprintf(stderr, "usage: %s <doted-decimal-address>\n", argv[0]);
        exit(0);
    }

    int rc = inet_pton(AF_INET, argv[1], &inaddr);

    if (rc == 0)
        printf("inet_pton error: invalid network byte order");
    else if (rc < 0)
        printf("inet_pton error");

    printf("Host-Byte-Order:      0x%x\n", ntohl(inaddr.s_addr)); // print address in host byte order
    printf("Network-Byte-Order:   0x%x\n", inaddr.s_addr);       // print address in network byte order
    exit(0);
}