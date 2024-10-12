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
    char message[100]; // Buffer to send message
    char reply[100];   // Buffer to receive reply

    // Open the FIFO for reading and writing
    int fd = open(FIFO_PATH, O_RDWR);
    if (fd == -1)
    {
        perror("Error opening FIFO");
        exit(1);
    }

    // Get input from the user
    printf("Client (PID: %d): Enter your message: ", getpid());
    fgets(message, sizeof(message), stdin);

    // Prepare message with client's PID
    char formatted_message[150];
    snprintf(formatted_message, sizeof(formatted_message), "Client (PID: %d): %s", getpid(), message);

    // Send message to the server
    write(fd, formatted_message, strlen(formatted_message) + 1);

    // Wait for the server's reply
    read(fd, reply, sizeof(reply));
    printf("Client (PID: %d) received: %s\n", getpid(), reply);

    // Close the FIFO
    close(fd);

    return 0;
}
