#include <stdio.h>
#include <string.h>

void IO () {
    #ifdef LOCAL_MACHINE
        freopen("in.txt", "r", stdin);
        freopen("out.txt", "w", stdout);
    #endif
}


int main() {
    IO();
    int x = 0x87654321;

    // the least significant byte of x
    printf("%.2x\n", x & 0xff);

    // All but the LSB complemented
    printf("%x\n", x ^ ~0xff);

    // The LSB set to all ones and all other bytes unchanged
    printf("%x", x | 0xff);
    return 0;
}