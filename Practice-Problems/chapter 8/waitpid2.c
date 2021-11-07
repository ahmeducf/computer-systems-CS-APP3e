#include <stdio.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>

#define N 10

int main (void)
{
    pid_t pid[N], retpid;
    int status;

    /* parent creates N children */
    for (int i = 0; i < N; i++)
    {
        if ((pid[i] = fork()) == 0)
        {
            _exit(100+i);
        }
    }

    /* parent reaps N children in order */
    int i = 0;
    while ((retpid = waitpid(pid[i++], &status, 0)) > 0)
    {
        if (WIFEXITED(status))
        {
            printf("child %d terminated normally with exit status=%d\n", retpid, WEXITSTATUS(status));
        }
        else
        {
            printf("child %d terminated abnormally\n", retpid);
        }
    }
    
    return 0;
}