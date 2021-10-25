#include <stdio.h>
#include <string.h>
#include <limits.h>
#include <stdlib.h>

void IO () {
    #ifdef LOCAL_MACHINE
        freopen("in.txt", "r", stdin);
        freopen("out.txt", "w", stdout);
    #endif
}

int div16(int x){
    /* Compute bias to be either 0 (x >= 0) or 15 (x < 0) */
    int bias = (x >> 31) & 0xf;
    return (x + bias) >> 4;
}

int main() {
    IO();

    printf("%d\n", div16(64));
    printf("%d\n", div16(-64));

    printf("%d\n", div16(100));
    printf("%d\n", div16(-100));
    return 0;
}