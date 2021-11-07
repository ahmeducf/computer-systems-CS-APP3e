#include <stdio.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>

void unix_error(char *msg)
{
    fprintf(stderr, "%s: %s\n", msg, strerror(errno));
    _exit(0);
}

pid_t Fork (void)
{
    pid_t pid;
    if ((pid = fork()) < 0)
    {
        unix_error("Fork Error");
    }
    return pid;
}
