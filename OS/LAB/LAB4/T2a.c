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
    int parent_to_child[2]; // Pipe for Parent -> Child communication
    int child_to_parent[2]; // Pipe for Child -> Parent communication

    char buffer_p[] = "Welcome"; // Message from Parent to Child
    char buffer_p1[] = "Thanks"; // Message from Child to Parent
    char buffer_c[10];           // Buffer to store received messages

    // Create pipes
    if (pipe(parent_to_child) == -1)
    {
        perror("Error creating parent-to-child pipe");
        exit(1);
    }

    if (pipe(child_to_parent) == -1)
    {
        perror("Error creating child-to-parent pipe");
        exit(1);
    }

    for (int i = 0; i < 10; i++)
    {
        pid_t pid = fork();
        if (pid > 0)
        {
            // Parent process
            close(parent_to_child[0]); // Close read end of parent-to-child pipe
            close(child_to_parent[1]); // Close write end of child-to-parent pipe

            // Send message to child
            write(parent_to_child[1], buffer_p, sizeof(buffer_p));

            // Wait for the message from the child
            read(child_to_parent[0], buffer_c, sizeof(buffer_c));
            printf("Parent %d received %s from Child %d\n", getpid(), buffer_c, pid); // Parent output format

            // Close the remaining pipe ends
            close(parent_to_child[1]);
            close(child_to_parent[0]);
            // wait(NULL);
            exit(0);
        }
        else if (pid == 0)
        {
            // Child process
            close(parent_to_child[1]); // Close write end of parent-to-child pipe
            close(child_to_parent[0]); // Close read end of child-to-parent pipe

            // Receive message from parent
            read(parent_to_child[0], buffer_c, sizeof(buffer_c));
            printf("Child %d received %s from Parent %d\n", getpid(), buffer_c, getppid()); // Child output format

            // Send message back to parent
            write(child_to_parent[1], buffer_p1, sizeof(buffer_p1));

            // Close the remaining pipe ends
            close(parent_to_child[0]);
            close(child_to_parent[1]);
        }
        else
        {
            // Fork failed
            perror("Fork failed");
            exit(1);
        }
    }

    return 0;
}
