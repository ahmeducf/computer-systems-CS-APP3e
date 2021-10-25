long fibonacci_gd_goto(long n)
{
    long i = 2;
    long next = n, first = 0, second = 1;
    if (n <= 1)
        goto done;
loop:
    next = first + second;
    first = second; second = next;
    i++;
    if (i <= n)
        goto loop;
done:
    return next;
}