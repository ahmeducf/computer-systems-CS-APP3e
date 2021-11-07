#include <stdio.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <stdlib.h>
#include <signal.h>
void sigint_handler(int sig) {return;}

unsigned int wakeup (unsigned int secs)
{
    int rc = sleep(secs);
    printf("woke up at %d secs\n", secs-rc+1);
    return rc;
}

int main (int argc, char *argv[])
{
    // sigset_t mask, prev_mask;
    // sigemptyset(&mask);
    // sigaddset(&mask, SIGINT);
    // sigprocmask(SIG_BLOCK, &mask, &prev_mask);
    signal(SIGINT, sigint_handler); /* install handler */
    wakeup(atoi(argv[1]));
}