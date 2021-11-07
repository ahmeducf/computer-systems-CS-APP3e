#include <stdio.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>

unsigned int wakeup (unsigned int secs)
{
    int rc = sleep(secs);
    printf("woke up at %d secs\n", secs-rc+1);
    return rc;
}

int main (void) {
    int a = 4;
    printf("%d", a++);
}