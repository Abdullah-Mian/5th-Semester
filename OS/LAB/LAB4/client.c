#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>

#define FIFO_NAME "my_fifo" // Name of the FIFO

int main()
{
    char buffer[100]; // Buffer to store messages

    while (1)
    {
        // Get message from the user
        printf("Client: ");
        fgets(buffer, sizeof(buffer), stdin);
        buffer[strcspn(buffer, "\n")] = 0; // Remove newline character

        // Open the FIFO for writing
        int fd_write = open(FIFO_NAME, O_WRONLY);
        if (fd_write == -1)
        {
            perror("open");
            exit(1);
        }

        // Write message to the FIFO
        write(fd_write, buffer, strlen(buffer) + 1);
        close(fd_write);

        // Check if the client sent "exit"
        if (strcmp(buffer, "exit") == 0)
        {
            break; // Exit the loop if "exit" is sent
        }

        // Open the FIFO for reading
        int fd_read = open(FIFO_NAME, O_RDONLY);
        if (fd_read == -1)
        {
            perror("open");
            exit(1);
        }

        // Read response from the FIFO
        read(fd_read, buffer, sizeof(buffer));
        printf("Server: %s\n", buffer);
        close(fd_read);
    }

    return 0;
}
