#include <stdio.h>
#include <string.h>

void IO () {
    #ifdef LOCAL_MACHINE
        freopen("in.txt", "r", stdin);
        freopen("out.txt", "w", stdout);
    #endif
}

void inplace_swap (int *x, int *y){
    *x = *x ^ *y;
    *y = *x ^ *y;
    *x = *x ^ *y;
}

void reverseArray (int arr[], int len){
    int first, last;
    for (first = 0, last = len-1; first < last; first++, last--){

        inplace_swap(&arr[first], &arr[last]);
    }
}
int main() {
    IO();
    int a = 2;
    int b = 3;

    int arr[] = {1, 2, 3, 4, 5};
    reverseArray(arr, 5);

    int i = 0;
    for (; i < 5; i++){
        printf("%d ", arr[i]);
    }
    return 0;
}