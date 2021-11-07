#include "shellex.h"

int parseline (char *buf, char **argv)
{
    char *delim;
    int argc;
    int bg;

    buf[strlen(buf)-1] = ' ';   /* replace trailing '\n' with space */
    while (*buf && (*buf == ' '))   /* ignore leading spaces */
        buf++;

    /* build the argv list */
    argc = 0;
    while ((delim = strchr(buf, ' '))) 
    {
        argv[argc++] = buf;
        *delim = '\0';
        buf = delim + 1;
        while (*buf && (*buf == ' '))
            buf++;
    }
    argv[argc] = NULL;

    if (argc == 0) /* ignore blank line */
        return 1;
    
    /* should the job run in the background? */
    if ((bg = (*argv[argc-1] == '&')) != 0)
        argv[--argc] = NULL;

    return bg;
}