#include "shellex.h"

void eval (char *cmdline)
{
    char *argv[MAXARGS];
    char buf[MAXARGS];
    int bg;
    pid_t pid;

    strcpy(buf, cmdline);
    bg = parseline(buf, argv);

    if (argv[0] == NULL)
        return; /* ignore empty lines */
    
    if (!builtin_command(argv)){
        if ((pid = fork()) == 0){
            if (execve(argv[0], argv, __environ) < 0){
                printf("%s: command not found.\n", argv[0]);
                _exit(0);
            }
        }

        /* parent waits for foreground job to terminate */
        if (!bg){
            int status;
            if (waitpid(pid, &status, 0) < 0)
                unix_error("waitfg: waitpid error");
        }
        else
            printf("%d %s", pid, cmdline);
    }
    return;
}