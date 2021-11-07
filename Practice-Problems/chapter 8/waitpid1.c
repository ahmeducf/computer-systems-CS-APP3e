#include <stdio.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>

#define N 10

int main (void) {
    pid_t pid;
    int status;

    /* parent creates N children */
    for (int i = 0; i < N; i++)
    {
        if ((pid = fork()) == 0)
        {
            _exit(100+i);
        }
    }

    /* parent reaps N children in no particular order */
    while ((pid = waitpid(-1, &status, 0)) > 0)
    {
        if (WIFEXITED(status))
        {
            printf("child %d terminated normally with exit status=%d\n", pid, WEXITSTATUS(status));
        }
        else
        {
            printf("child %d terminated abnormally\n", pid);
        }
    }
    
    return 0;
}