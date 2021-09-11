#include <stdio.h>
#include <string.h>
#include <limits.h>

void IO () {
    #ifdef LOCAL_MACHINE
        freopen("in.txt", "r", stdin);
        freopen("out.txt", "w", stdout);
    #endif
}

typedef unsigned char *(byte_pointer);

void show_bytes (byte_pointer start, size_t len) {
    for (size_t i = 0; i < len; i++)
    {
        printf("%p\t %.2X\n", start+i, start[i]);
    }
}

int main() {
    IO();
    int x = 24;
    show_bytes(x, sizeof(int));
    return 0;
}