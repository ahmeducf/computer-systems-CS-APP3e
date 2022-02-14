#include "csapp.h"


/*
 * mmapcopy - uses mmap to copy file fd to stdout
 */
void mmapcopy(int fd, int size) {
    char *bufp;

    bufp = mmap(NULL, size, PROT_READ, MAP_PRIVATE, fd, 0);

    write(1, bufp, size);

    return;
}


int main(int argc, char *argv[]) {
    if (argc != 2) {
        printf("usgae: %s <file name>\n", argv[0]);
        exit(0);
    }

    struct stat stat;
    int fd = open(argv[1], O_RDONLY, 0);

    fstat(fd, &stat);

    mmapcopy(fd, stat.st_size);

    return 0;
} 