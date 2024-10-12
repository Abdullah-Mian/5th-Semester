#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main()
{
    char buffer[128];
    ssize_t bytes_read, bytes_write;

    bytes_read = read(STDIN_FILENO, buffer, sizeof(buffer));
    if (bytes_read < 0)
    {
        printf("read() ERROR");
        exit(1);
    }
    bytes_write = write(STDOUT_FILENO, buffer, bytes_read);
    if (bytes_write < 0)
    {
        printf("write() ERROR");
        exit(1);
    }
    return 0;
}