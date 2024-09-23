#include <stdio.h>
#include <unistd.h>

int main(int argc, char *argv[])
{
    int pid;
    int i, n;

    // Get input from the user for the number of processes
    printf("Enter the number of processes to create: ");
    scanf("%d", &n);

    for (i = 0; i < n; i++)
    {
        pid = fork();
        if (pid > 0)
            continue;
        else if (pid == 0)
            break;
        else
            printf("ERROR: In fork()\n");
    } // end of for
    printf("My process id is %d and my Parent process id is %d\n", getpid(), getppid());

    return 0;
}
