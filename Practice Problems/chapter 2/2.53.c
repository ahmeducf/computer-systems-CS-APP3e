#include <stdio.h>
#include <string.h>
#include <limits.h>
#include <stdlib.h>
#include <math.h>

#define POS_INFINITY (1.0/0.0)
#define NEG_INFINITY (-POS_INFINITY)
#define NEG_ZERO (-1/POS_INFINITY)
void IO () {
    #ifdef LOCAL_MACHINE
        freopen("in.txt", "r", stdin);
        freopen("out.txt", "w", stdout);
    #endif
}

int main() {
    IO();


    printf("%f\n", POS_INFINITY);
    printf("%f\n", NEG_INFINITY);
    printf("%.1f\n", NEG_ZERO);
    return 0;
}