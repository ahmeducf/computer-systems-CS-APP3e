#include <stdio.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#define MAXARGS 128

void eval (char *cmdline);
int parseline (char *buf, char **argv);
int builtin_command (char **argv);

void unix_error(char *msg);