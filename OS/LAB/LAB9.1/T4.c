#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

// Structure to represent a process
typedef struct
{
    int *request;
    int *allocation;
} Process;

// Function to check for cycles
bool isCyclic(int graph[], bool visited[], bool recStack[], int vertex, int totalVertices)
{
    visited[vertex] = true;
    recStack[vertex] = true;

    for (int i = 0; i < totalVertices; i++)
    {
        if (graph[vertex * totalVertices + i] == 1)
        {
            if (!visited[i] && isCyclic(graph, visited, recStack, i, totalVertices))
                return true;
            else if (recStack[i])
                return true;
        }
    }
    recStack[vertex] = false;
    return false;
}

// Detect deadlock dynamically
void detectDeadlock(Process processes[], int numProcesses, int numResources)
{
    int totalVertices = numProcesses + numResources;
    int *graph = (int *)calloc(totalVertices * totalVertices, sizeof(int));

    // Create adjacency matrix
    for (int i = 0; i < numProcesses; i++)
    {
        for (int j = 0; j < numResources; j++)
        {
            if (processes[i].request[j])
                graph[i * totalVertices + (numProcesses + j)] = 1; // Process to Resource
            if (processes[i].allocation[j])
                graph[(numProcesses + j) * totalVertices + i] = 1; // Resource to Process
        }
    }

    // Detect cycles
    bool *visited = (bool *)calloc(totalVertices, sizeof(bool));
    bool *recStack = (bool *)calloc(totalVertices, sizeof(bool));

    for (int i = 0; i < totalVertices; i++)
    {
        if (!visited[i] && isCyclic(graph, visited, recStack, i, totalVertices))
        {
            printf("Deadlock detected.\n");
            free(graph);
            free(visited);
            free(recStack);
            return;
        }
    }
    printf("No deadlock detected.\n");

    free(graph);
    free(visited);
    free(recStack);
}

int main()
{
    int numProcesses, numResources;
    printf("Enter number of processes: ");
    scanf("%d", &numProcesses);
    printf("Enter number of resources: ");
    scanf("%d", &numResources);

    Process *processes = (Process *)malloc(numProcesses * sizeof(Process));
    for (int i = 0; i < numProcesses; i++)
    {
        processes[i].request = (int *)malloc(numResources * sizeof(int));
        processes[i].allocation = (int *)malloc(numResources * sizeof(int));
    }

    printf("Enter request matrix:\n");
    for (int i = 0; i < numProcesses; i++)
    {
        for (int j = 0; j < numResources; j++)
        {
            scanf("%d", &processes[i].request[j]);
        }
    }

    printf("Enter allocation matrix:\n");
    for (int i = 0; i < numProcesses; i++)
    {
        for (int j = 0; j < numResources; j++)
        {
            scanf("%d", &processes[i].allocation[j]);
        }
    }

    detectDeadlock(processes, numProcesses, numResources);

    for (int i = 0; i < numProcesses; i++)
    {
        free(processes[i].request);
        free(processes[i].allocation);
    }
    free(processes);
    return 0;
}
