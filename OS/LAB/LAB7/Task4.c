#include <stdio.h>     // Include standard input/output library
#include <dirent.h>    // Include directory entry library
#include <sys/types.h> // Include system data types library
#include <sys/stat.h>  // Include file status library
#include <unistd.h>    // Include standard symbolic constants and types
#include <pwd.h>       // Include password structure library
#include <grp.h>       // Include group structure library
#include <time.h>      // Include time library
// Function to print file permissions
void print_permissions(mode_t mode)
{
    // Print directory or file
    printf((S_ISDIR(mode)) ? "d" : "-"); // S_ISDIR() is a macro that returns non-zero if the file is a directory
    // Print user permissions
    printf((mode & S_IRUSR) ? "r" : "-");
    printf((mode & S_IWUSR) ? "w" : "-");
    printf((mode & S_IXUSR) ? "x" : "-");
    // Print group permissions
    printf((mode & S_IRGRP) ? "r" : "-");
    printf((mode & S_IWGRP) ? "w" : "-");
    printf((mode & S_IXGRP) ? "x" : "-");
    // Print others permissions
    printf((mode & S_IROTH) ? "r" : "-");
    printf((mode & S_IWOTH) ? "w" : "-");
    printf((mode & S_IXOTH) ? "x" : "-");
}

int main()
{
    DIR *dir;           // Directory pointer
    struct dirent *ent; // Directory entry structure
    struct stat st;     // File status structure
    struct passwd *pw;  // Password structure
    struct group *gr;   // Group structure
    char timebuf[80];   // Buffer to store formatted time

    // Open the directory
    if ((dir = opendir("/home/faizy/Downloads/")) != NULL)
    {
        // Read each entry in the directory
        while ((ent = readdir(dir)) != NULL)
        {
            char fullPath[1024]; // Buffer to store full path of the file
            // Create full path of the file
            snprintf(fullPath, sizeof(fullPath), "/home/faizy/Downloads/%s", ent->d_name);

            // Get file status
            if (stat(fullPath, &st) == 0)
            {
                // Print file permissions
                print_permissions(st.st_mode);
                // Print number of hard links
                printf(" %lu", st.st_nlink);

                // Get user and group information
                pw = getpwuid(st.st_uid);
                gr = getgrgid(st.st_gid);
                // Print user and group names
                printf(" %s %s", pw->pw_name, gr->gr_name);

                // Print file size
                printf(" %5ld", st.st_size);

                // Format and print last modification time
                strftime(timebuf, sizeof(timebuf), "%b %d %H:%M", localtime(&st.st_mtime));
                printf(" %s", timebuf);

                // Print file name
                printf(" %s", ent->d_name);

                // Check if it's a directory and print the message
                if (S_ISDIR(st.st_mode))
                {
                    printf("\t||| It's a directory");
                }

                printf("\n");
            }
            else
            {
                // Print error if stat fails
                perror("stat");
            }
        }
        // Close the directory
        closedir(dir);
    }
    else
    {
        // Print error if opendir fails
        perror("opendir");
        return 1; // Return error code
    }

    return 0; // Return success code
}
