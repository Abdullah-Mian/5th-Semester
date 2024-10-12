#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>

int main()
{
    int fileDiscriptor;

    // Open the file for writing, create it if it doesn't exist, truncate it if it does
    fileDiscriptor = open("../backup.data", O_WRONLY | O_CREAT | O_TRUNC, 0644);
    if (fileDiscriptor == -1)
    {
        perror("Error opening file");
        return 1;
    }

    return 0;
}
