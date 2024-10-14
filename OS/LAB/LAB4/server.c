#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

#define FIFO_NAME "my_fifo" // Name of the FIFO

int main()
{
    char buffer[100]; // Buffer to store messages

    // Create the named pipe (FIFO)
    if (mkfifo(FIFO_NAME, 0666) == -1)
    {
        perror("mkfifo");
        exit(1);
    }

    printf("Server is waiting for client to connect...\n");

    while (1)
    {
        // Open the FIFO for reading
        int fd_read = open(FIFO_NAME, O_RDONLY);
        if (fd_read == -1)
        {
            perror("open");
            exit(1);
        }

        // Read message from the FIFO
        read(fd_read, buffer, sizeof(buffer));
        printf("Client: %s\n", buffer);

        // Check if the client sent "exit"
        if (strcmp(buffer, "exit") == 0)
        {
            close(fd_read);
            break; // Exit the loop if "exit" is received
        }

        // Get response from the server
        printf("Server: ");
        fgets(buffer, sizeof(buffer), stdin);
        buffer[strcspn(buffer, "\n")] = 0; // Remove newline character

        // Open the FIFO for writing
        int fd_write = open(FIFO_NAME, O_WRONLY);
        if (fd_write == -1)
        {
            perror("open");
            exit(1);
        }

        // Write response to the FIFO
        write(fd_write, buffer, strlen(buffer) + 1);
        close(fd_write);
        close(fd_read);
    }

    // Clean up: remove the FIFO
    unlink(FIFO_NAME);
    return 0;
}
