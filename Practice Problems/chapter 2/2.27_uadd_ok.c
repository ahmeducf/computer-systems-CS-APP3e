#include <stdio.h>
#include <string.h>
#include <limits.h>

void IO () {
    #ifdef LOCAL_MACHINE
        freopen("in.txt", "r", stdin);
        freopen("out.txt", "w", stdout);
    #endif
}

int uadd_ok(unsigned x, unsigned y){
    unsigned result = x + y;
    if (result < x || result < y)
        return 0;
    else
        return 1;
}
int main() {
    IO();
    printf("%d\n", uadd_ok(1, 1));
    printf("%d\n", uadd_ok(0xffffffff, 0xffffffff));
    return 0;
}