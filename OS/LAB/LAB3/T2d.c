#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

#define BUFFER_SIZE 1024

int main()
{
    int source_fileDiscriptor, dest_fileDiscriptor;
    ssize_t nread, bytes_written;
    char buffer[BUFFER_SIZE];

    // Open the source file
    source_fileDiscriptor = open("policy.data", O_RDONLY);
    if (source_fileDiscriptor == -1)
    {
        perror("Error opening source file");
        exit(EXIT_FAILURE);
    }

    // Open/create the destination file
    dest_fileDiscriptor = open("backup.data", O_WRONLY | O_CREAT | O_TRUNC, 0644);
    if (dest_fileDiscriptor == -1)
    {
        perror("Error opening/creating destination file");
        close(source_fileDiscriptor);
        exit(EXIT_FAILURE);
    }

    // Read from source and write to destination in a loop
    while ((nread = read(source_fileDiscriptor, buffer, BUFFER_SIZE)) > 0)
    {
        // Write to destination file
        bytes_written = write(dest_fileDiscriptor, buffer, nread);
        if (bytes_written == -1)
        {
            perror("Error writing to destination file");
            close(source_fileDiscriptor);
            close(dest_fileDiscriptor);
            exit(EXIT_FAILURE);
        }

        // Write to standard output (optional, to show on console)
        write(STDOUT_FILENO, buffer, nread);
    }

    if (nread == -1)
    {
        perror("Error reading source file");
    }

    // Close the file descriptors
    close(source_fileDiscriptor);
    close(dest_fileDiscriptor);

    return 0;
}
