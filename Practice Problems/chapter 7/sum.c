int sum (int *a, int n)
{
    int i, s = 0;

    for (int i = 0; i < n; i++)
    {
        s += a[i];
    }
    return s;
}