#include <stdio.h>
#include <stdbool.h>

#define P 2 // Number of processes
#define R 2 // Number of resources

bool isCyclic(int graph[P + R][P + R], bool visited[], bool recStack[], int v)
{
    visited[v] = true;
    recStack[v] = true;

    for (int i = 0; i < P + R; i++)
    {
        if (graph[v][i])
        {
            if (!visited[i] && isCyclic(graph, visited, recStack, i))
                return true;
            else if (recStack[i])
                return true;
        }
    }

    recStack[v] = false;
    return false;
}

void detectDeadlock(int request[P][R], int allocation[P][R])
{
    int graph[P + R][P + R] = {0};

    // Convert to wait-for graph
    for (int i = 0; i < P; i++)
    {
        for (int j = 0; j < R; j++)
        {
            if (request[i][j])
                graph[i][P + j] = 1;
            if (allocation[i][j])
                graph[P + j][i] = 1;
        }
    }

    bool visited[P + R] = {false};
    bool recStack[P + R] = {false};

    for (int i = 0; i < P + R; i++)
    {
        if (!visited[i] && isCyclic(graph, visited, recStack, i))
        {
            printf("Deadlock detected.\n");
            return;
        }
    }

    printf("No deadlock detected.\n");
}

int main()
{
    int request[P][R] = {{0, 1}, {1, 0}};
    int allocation[P][R] = {{1, 0}, {0, 1}};

    detectDeadlock(request, allocation);
    return 0;
}
