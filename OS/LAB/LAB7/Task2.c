#include <stdio.h>  // Include the stdio.h library for input and output operations
#include <dirent.h> // Include the dirent.h library for directory operations

int main()
{
    const char *path = "./";  // Define the path to the current directory
    DIR *dir = opendir(path); // Open the directory specified by the path
    if (dir == NULL)          // Check if the directory could not be opened
    {
        fprintf(stderr, "Error: Could not open directory.\n"); // Print an error message to the standard error stream
        return 1;                                              // Return 1 to indicate an error
    }

    struct dirent *entry; // Define a pointer to a dirent structure to hold directory entries

    entry = readdir(dir);    // Read the first entry in the directory
    while (entry != NULL)    // Loop until there are no more entries
    {
        printf("%s\n", entry->d_name); // Print the name of the current entry
        entry = readdir(dir);          // Read the next entry in the directory
    }
    closedir(dir); // Close the directory

    return 0; // Return 0 to indicate successful execution
}