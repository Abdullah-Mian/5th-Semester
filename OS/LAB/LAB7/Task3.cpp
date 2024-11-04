#include <iostream>
#include <dirent.h>
#include <sys/stat.h>
#include <unistd.h>

using namespace std;

int main()
{
    const char *path = "./"; // Current directory
    DIR *dir = opendir(path);
    if (dir == nullptr)
    {
        cerr << "Error: Could not open directory." << endl;
        return 1;
    }

    struct dirent *entry;
    struct stat fileStat;

    while ((entry = readdir(dir)) != nullptr)
    {
        string fullPath = string(path) + "/" + entry->d_name;

        // Get the status of the file
        if (stat(fullPath.c_str(), &fileStat) == -1)
        {
            cerr << "Error getting stats for " << entry->d_name << endl;
            continue;
        }

        // Print the file or directory name
        cout << entry->d_name;

        // Check if it's a directory
        if (S_ISDIR(fileStat.st_mode))
        {
            cout << " [directory]";
        }

        cout << endl;
    }

    closedir(dir);
    return 0;
}
