#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>

int main()
{
    int fileDiscriptor;
    const char *text = "Honesty is the Best Policy";
    ssize_t bytes_written;

    // Open the file for writing, create it if it doesn't exist, truncate it if it does
    fileDiscriptor = open("/home/abdullah/Documents/5th-Semester/OS/LAB/LAB3/policy.data", O_WRONLY | O_CREAT | O_TRUNC, 0644);
    if (fileDiscriptor == -1)
    {
        perror("Error opening file");
        return 1;
    }

    // Write the text to the file
    bytes_written = write(fileDiscriptor, text, strlen(text));
    if (bytes_written == -1)
    {
        perror("Error writing to file");
        close(fileDiscriptor);
        return 1;
    }

    // Close the file
    close(fileDiscriptor);
    return 0;
}