#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main()
{
    int pid;
    pid = fork();
    if (pid > 0)
        printf("I am parent: my process id is %d and my child process id is %d\n", getpid(), pid);
    else if (pid == 0)
        printf("I am child: my process id is %d and my parent process id is %d\n", getpid(), getppid());
    else
        printf("ERROR in executing fork()");
    return 0;
}