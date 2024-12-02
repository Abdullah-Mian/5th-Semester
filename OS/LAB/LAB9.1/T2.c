#include <stdio.h>
#include <stdbool.h>

// Define a structure to represent processes
typedef struct
{
    int request[4];    // Resources requested
    int allocation[4]; // Resources allocated
} Process;

// Check for a cycle using a visited array
bool isCyclic(int graph[], bool visited[], bool recStack[], int vertex, int totalVertices)
{
    visited[vertex] = true;
    recStack[vertex] = true;

    for (int i = 0; i < totalVertices; i++)
    {
        if (graph[vertex * totalVertices + i] == 1)
        { // Check connection in graph
            if (!visited[i] && isCyclic(graph, visited, recStack, i, totalVertices))
                return true;
            else if (recStack[i])
                return true;
        }
    }
    recStack[vertex] = false;
    return false;
}

// Detect deadlock in the system
void detectDeadlock(Process processes[], int numProcesses, int numResources)
{
    int totalVertices = numProcesses + numResources;
    int graph[totalVertices * totalVertices]; // Flattened adjacency matrix
    for (int i = 0; i < totalVertices * totalVertices; i++)
        graph[i] = 0;

    // Create a resource allocation graph
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

    // Detect cycles using DFS
    bool visited[totalVertices];
    bool recStack[totalVertices];
    for (int i = 0; i < totalVertices; i++)
    {
        visited[i] = recStack[i] = false;
    }

    for (int i = 0; i < totalVertices; i++)
    {
        if (!visited[i] && isCyclic(graph, visited, recStack, i, totalVertices))
        {
            printf("Deadlock detected.\n");
            return;
        }
    }
    printf("No deadlock detected.\n");
}

int main()
{
    // Example data for 4 processes and 4 resources
    Process processes[4] = {
        {{0, 1, 0, 0}, {1, 0, 0, 0}}, // Process 0
        {{0, 0, 1, 0}, {0, 1, 0, 0}}, // Process 1
        {{0, 0, 0, 1}, {0, 0, 1, 0}}, // Process 2
        {{1, 0, 0, 0}, {0, 0, 0, 1}}  // Process 3
    };
    detectDeadlock(processes, 4, 4);
    return 0;
}
