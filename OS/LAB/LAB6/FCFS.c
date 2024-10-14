#include <stdio.h> // Standard input/output library

int main() // Main function where execution starts
{
    int bt[20], wt[20], tat[20], n; // Arrays for burst time (bt), waiting time (wt), and turnaround time (tat). Variable n for number of processes.
    float wtsum = 0, tatsum = 0;    // Variables to store the sum of waiting times and turnaround times.
    float wtavg, tatavg;            // Variables to store average waiting time and turnaround time.

    // Input: Number of processes
    printf("\nEnter the number of processes: ");
    scanf("%d", &n);

    // Input: Burst time for each process
    for (int i = 0; i < n; i++)
    {
        printf("\nEnter Burst Time for Process %d: ", i);
        scanf("%d", &bt[i]);
    }

    // Initialize waiting and turnaround time for the first process
    wt[0] = 0;      // Waiting time for first process is 0
    tat[0] = bt[0]; // Turnaround time for first process is its burst time

    // Calculate waiting time and turnaround time for remaining processes
    for (int i = 1; i < n; i++)
    {
        wt[i] = wt[i - 1] + bt[i - 1]; // Waiting time = waiting time of previous process + burst time of previous process
        tat[i] = wt[i] + bt[i];        // Turnaround time = waiting time + burst time
        wtsum += wt[i];                // Add waiting time to the total
        tatsum += tat[i];              // Add turnaround time to the total
    }

    // Output: Process details with burst time, waiting time, and turnaround time
    printf("\nPROCESS\tBURST TIME\tWAITING TIME\tTURNAROUND TIME\n");
    for (int i = 0; i < n; i++)
    {
        printf("P%d\t\t%d\t\t%d\t\t%d\n", i, bt[i], wt[i], tat[i]);
    }

    // Calculate average waiting time and turnaround time
    wtavg = wtsum / n;
    tatavg = tatsum / n;

    // Output: Average waiting time and turnaround time
    printf("\nAverage Waiting Time: %.2f", wtavg);
    printf("\nAverage Turnaround Time: %.2f\n", tatavg);

    return 0; // Return 0 to indicate successful execution
}
