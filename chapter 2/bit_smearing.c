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
    int x = 0x9;
    // make all bits to the right of the most significnat 1 equal 1
    x |= x >> 16;
    x |= x >> 8;
    x |= x >> 4;
    x |= x >> 2;
    x |= x >> 1;
    show_bytes(&x, sizeof(int));
    return 0;
}