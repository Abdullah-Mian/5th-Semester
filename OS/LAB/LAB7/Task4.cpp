#include <iostream>
#include <iomanip>
#include <dirent.h>
#include <sys/stat.h>
#include <unistd.h>
#include <pwd.h>
#include <grp.h>
#include <ctime>

using namespace std;

int main()
{
    const char *path = "./";
    DIR *dir = opendir(path);
    if (dir == nullptr)
    {
        cerr << "Error opening directory" << endl;
        return 1;
    }

    struct dirent *entry;
    struct stat fileStat;

    while ((entry = readdir(dir)) != nullptr)
    {
        string fullPath = string(path) + "/" + entry->d_name;

        // Use stat to get file information
        if (stat(fullPath.c_str(), &fileStat) == -1)
        {
            cerr << "Error getting stats for " << entry->d_name << endl;
            continue;
        }

        // Display file type and permissions
        cout << (S_ISDIR(fileStat.st_mode) ? 'd' : '-')
             << ((fileStat.st_mode & S_IRUSR) ? 'r' : '-')
             << ((fileStat.st_mode & S_IWUSR) ? 'w' : '-')
             << ((fileStat.st_mode & S_IXUSR) ? 'x' : '-')
             << ((fileStat.st_mode & S_IRGRP) ? 'r' : '-')
             << ((fileStat.st_mode & S_IWGRP) ? 'w' : '-')
             << ((fileStat.st_mode & S_IXGRP) ? 'x' : '-')
             << ((fileStat.st_mode & S_IROTH) ? 'r' : '-')
             << ((fileStat.st_mode & S_IWOTH) ? 'w' : '-')
             << ((fileStat.st_mode & S_IXOTH) ? 'x' : '-') << "  ";

        // Print link count, owner, and group
        cout << setw(3) << fileStat.st_nlink << " ";
        cout << setw(8) << getpwuid(fileStat.st_uid)->pw_name << " ";
        cout << setw(8) << getgrgid(fileStat.st_gid)->gr_name << " ";

        // Print file size
        cout << setw(8) << fileStat.st_size << " ";

        // Get last access time
        struct tm *accessTime = localtime(&fileStat.st_atime);
        cout << put_time(accessTime, "%b %d %H:%M") << "  ";

        // Get last modification time
        struct tm *modTime = localtime(&fileStat.st_mtime);
        cout << put_time(modTime, "%b %d %H:%M") << "  ";

        // Print file name
        cout << entry->d_name << endl;
    }

    closedir(dir);
    return 0;
}
