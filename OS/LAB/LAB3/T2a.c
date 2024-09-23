#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <sys/stat.h>

int main()
{
    int fd;
    fd = open("policy.data", O_RDWR | O_CREAT, S_IRUSR | S_IWUSR);

    if (fd == -1)
    {
        perror("Error opening file");
        return 1;
    }

    printf("File 'policy.data' created successfully.\n");

    // Close the file descriptor
    close(fd);

    return 0;
}