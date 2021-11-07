#include "shellex.h"


int main ()
{
    char cmdline[MAXARGS];

    while (1)
    {
        /* Read */
        printf("$ ");
        fgets(cmdline, MAXARGS, stdin);

        if (feof(stdin))
            _exit(0);
        
        /* Evaluate */
        eval(cmdline);
    }
}