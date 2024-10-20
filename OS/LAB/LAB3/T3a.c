#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

#define BUFFER_SIZE 1024

int main()
{
    int nread, bytes_written;
    char buffer[BUFFER_SIZE];
    char message[] = "Honesty is the best policy";
    int source_fileDiscriptor, dest_fileDiscriptor;

    // Open the source file for writing
    source_fileDiscriptor = open("policy.data", O_WRONLY | O_CREAT | O_TRUNC, 0644);

    // Write "Honesty is the best policy" to the source file
    bytes_written = write(source_fileDiscriptor, message, sizeof(message));

    // Close the source file descriptor
    close(source_fileDiscriptor);

    // Reopen the source file
    source_fileDiscriptor = open("policy.data", O_RDONLY);
    // Reopen the destination file in append mode
    dest_fileDiscriptor = open("backup.data", O_WRONLY | O_CREAT | O_APPEND | O_TRUNC, 0644);

    // Repeat the data 10 times
    for (int i = 0; i < 10; i++)
    {
        lseek(source_fileDiscriptor, 0, SEEK_SET);
        nread = read(source_fileDiscriptor, buffer, BUFFER_SIZE);
        bytes_written = write(dest_fileDiscriptor, buffer, nread);
        write(dest_fileDiscriptor, "\n", 1);
    }

    // Close the file descriptors
    close(source_fileDiscriptor);
    close(dest_fileDiscriptor);

    // Reopen the destination file for reading
    dest_fileDiscriptor = open("backup.data", O_RDONLY);

    // Read from destination file and print to screen
    nread = read(dest_fileDiscriptor, buffer, BUFFER_SIZE);
    write(STDOUT_FILENO, buffer, nread);

    // Close the destination file descriptor
    close(dest_fileDiscriptor);

    return 0;
}