#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h> // For read and write functions
#include <stdio.h>  // For perror function
#include <stdlib.h>
#include <string.h>
#include <sys/wait.h>

int main()
{
    int fd[2];
    char buffer_p[] = "Welcome";
    char buffer_c[10];

    // Explicit check for pipe creation
    int pipe_status = pipe(fd);
    if (pipe_status == 0)
    {
        printf("Pipe is successfully created\n");
    }
    else
    {
        printf("Error in creating pipe\n");
        exit(1);
    }

    // Explicit fork check
    pid_t pid = fork();
    if (pid > 0)
    {
        // Parent process
        printf("Child Process created\n");
        write(fd[1], buffer_p, sizeof(buffer_p));
    }
    else if (pid == 0)
    {
        // Child process
        read(fd[0], buffer_c, sizeof(buffer_c));
        printf("%d Received %s from Parent Process %d\n", getpid(), buffer_c, getppid());
    }
    else
    {
        // Fork failed
        printf("Fork failed\n");
        exit(1);
    }

    return 0;
}
