#include <stdio.h>
#include <unistd.h>
int main(int argc, char *argv[])
{
    int pid;
    int i;

    for (i = 0; i < 4; i++)
    {
        pid = fork();
        if (pid > 0)
            continue;
        else if (pid == 0)
            break;
        else
            printf("ERROR: In fork()");
    } // end of for
    printf("My process id is %d and my Parent process id is %d\n", getpid(), getppid());
}