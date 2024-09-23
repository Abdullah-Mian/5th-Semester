#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>

int main(int argc, char *argv[])
{
    int pid;

    for (int i = 0; i < 5; i++)
    {

        pid = fork();
        if (pid == 0)
        {
            continue;
        }
    }
    while (wait(NULL) > 0)
        printf("Process Id=%d and Parent Id=%d\n", getpid(), getppid());
    // ;
}
