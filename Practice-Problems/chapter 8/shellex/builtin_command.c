#include "shellex.h"

int builtin_command (char **argv)
{
    if (!strcmp(argv[0], "quit"))   /* built-in quit command */
        _exit(0);
    if (!strcmp(argv[0], "&"))      /* ignore singleton & */
        return 1;
    return 0;                       /* Not a built-in command */
}