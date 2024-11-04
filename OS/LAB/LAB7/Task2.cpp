#include <iostream>
#include <dirent.h>
#include <vector>
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

    vector<string> files;
    struct dirent *entry;

    entry = readdir(dir);
    while (entry != nullptr)
    {
        cout << entry->d_name << endl;
        entry = readdir(dir);
    }
    closedir(dir);

    return 0;
}