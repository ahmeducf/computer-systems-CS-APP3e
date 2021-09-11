#include <stdio.h>
#include <string.h>
#include <limits.h>

void IO () {
    #ifdef LOCAL_MACHINE
        freopen("in.txt", "r", stdin);
        freopen("out.txt", "w", stdout);
    #endif
}


int tmult_ok(int x, int y){
    int p = x * y;
    return x == 0 || p/x == y;
}

int tmult_ok_64t(int x, int y){
    __int64_t p = (__int64_t)x * y;
    return p == (int)p;
}
int main() {
    IO();
    printf("%d\n", tmult_ok(10, 10));
    printf("%d\n", tmult_ok(0x7fffffff, 0x7fffffff));

    printf("%d\n", tmult_ok_64t(10, 10));
    printf("%d", tmult_ok_64t(0x7fffffff, 0x7fffffff));
    return 0;
}