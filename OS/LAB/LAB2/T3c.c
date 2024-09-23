#include <stdio.h>
#include <unistd.h>

int main(int argc, char *argv[])
{
    int pid;
    int i;

    for (i = 0; i < 2; i++)
    {
        pid = fork();
        if (pid > 0)
            continue;
        else if (pid == 0)
            break;
        else
            printf("ERROR: In fork()\n");
    } // end of for
    if (pid > 0) // Original parent process waits for all its direct children
    {
        while (wait(NULL) > 0)
            ; // Wait for all child processes to finish
        printf("All child processes have terminated.\n");
    }

    printf("My process id is %d and my Parent process id is %d\n", getpid(), getppid());

    return 0;
}
