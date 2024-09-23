#include <stdio.h>
#include <unistd.h>

int main()
{
    char buffer[] = "\nWelcome\n";
    write(STDOUT_FILENO, buffer, sizeof(buffer));
    return 0;
}