#include <stdio.h>
#include <dirent.h>
#include <sys/stat.h>
#include <unistd.h>
#include <string.h>

int main()
{
    const char *path = "./";
    const char *subdir = "subdirectory";

    // Create a subdirectory in the current working directory
    if (mkdir(subdir, 0755) == -1)
    {
        fprintf(stderr, "Error: Could not create subdirectory.\n");
    }

    DIR *dir = opendir(path);
    if (dir == NULL)
    {
        fprintf(stderr, "Error: Could not open directory.\n");
        return 1;
    }

    struct dirent *entry;
    struct stat fileStat;

    while ((entry = readdir(dir)) != NULL)
    {
        char fullPath[1024];
        snprintf(fullPath, sizeof(fullPath), "%s/%s", path, entry->d_name);

        if (stat(fullPath, &fileStat) == -1)
        {
            fprintf(stderr, "Error getting stats for %s\n", entry->d_name);
            continue;
        }

        printf("%s", entry->d_name);

        if (S_ISDIR(fileStat.st_mode))
        {
            printf(" [directory]");
        }

        // Print file status information
        printf(" (Size: %ld bytes, Permissions: %o)", fileStat.st_size, fileStat.st_mode & 0777);

        printf("\n");
    }

    closedir(dir);
    return 0;
}
