#include <iostream>
#include <unistd.h>

using namespace std;

int main()
{
    char cwd[1024];
    if (getcwd(cwd, sizeof(cwd)) != nullptr)
    {
        cout << "Current working directory: " << cwd << endl;
    }
    else
    {
        cerr << "Error getting current working directory" << endl;
        return 1;
    }
    return 0;
}
