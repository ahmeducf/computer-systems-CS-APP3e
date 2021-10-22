# 0 "sum.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "sum.c"
int sum (int *a, int n)
{
    int i, s = 0;

    for (int i = 0; i < n; i++)
    {
        s += a[i];
    }
    return s;
}
