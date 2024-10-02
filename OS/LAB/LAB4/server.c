#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define FIFO_PATH "/my_fifo"

int main()
{
    char buffer[100]; // Buffer to store received message
    char reply[100];  // Buffer to store reply message

    // Create the FIFO (named pipe) if it doesn't already exist
    if (mkfifo(FIFO_PATH, 0666) == -1)
    {
        perror("Error creating FIFO");
        exit(1);
    }

    // Open the FIFO for reading and writing
    int fd = open(FIFO_PATH, O_RDWR);
    if (fd == -1)
    {
        perror("Error opening FIFO");
        exit(1);
    }

    // Read message from the client
    read(fd, buffer, sizeof(buffer));
    printf("Server (PID: %d) received: %s\n", getpid(), buffer);
    // Prepare the reply message
    snprintf(reply, sizeof(reply), "Welcome from Server (PID: %d)", getpid());

    // Send reply to the client
    write(fd, reply, strlen(reply) + 1);

    // Close the FIFO
    close(fd);

    // Clean up the FIFO
    unlink(FIFO_PATH);

    return 0;
}
