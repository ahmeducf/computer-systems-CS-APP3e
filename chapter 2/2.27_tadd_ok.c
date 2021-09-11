#include <stdio.h>
#include <string.h>
#include <limits.h>

void IO () {
    #ifdef LOCAL_MACHINE
        freopen("in.txt", "r", stdin);
        freopen("out.txt", "w", stdout);
    #endif
}

int tadd_ok(int x, int y){
    return !((x > 0 && y > 0 && x+y < 0) || (x < 0 && y < 0 && x+y > 0));
}
int main() {
    IO();
    printf("%d\n", tadd_ok(1, 1));
    printf("%d\n", tadd_ok(0x7fffffff, 0x7fffffff));
    return 0;
}