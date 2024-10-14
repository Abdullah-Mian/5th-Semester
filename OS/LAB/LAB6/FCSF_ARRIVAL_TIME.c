#include <stdio.h> // Standard input/output library

int main() // Main function where execution starts
{
    int bt[20], wt[20], tat[20], at[20], ct[20], n; // Arrays for burst time (bt), waiting time (wt), turnaround time (tat), arrival time (at), and completion time (ct). Variable n for number of processes.
    float wtsum = 0, tatsum = 0;                    // Variables to store the sum of waiting times and turnaround times.
    float wtavg, tatavg;                            // Variables to store average waiting time and turnaround time.

    // Input: Number of processes
    printf("\nEnter the number of processes: ");
    scanf("%d", &n);

    // Input: Arrival time and Burst time for each process
    for (int i = 0; i < n; i++)
    {
        printf("\nEnter Arrival Time for Process %d: ", i);
        scanf("%d", &at[i]);

        printf("Enter Burst Time for Process %d: ", i);
        scanf("%d", &bt[i]);
    }

    // Initialize completion time, waiting time, and turnaround time for the first process
    ct[0] = at[0] + bt[0];  // Completion time of the first process = arrival time + burst time
    tat[0] = ct[0] - at[0]; // Turnaround time = completion time - arrival time
    wt[0] = tat[0] - bt[0]; // Waiting time = turnaround time - burst time
    wtsum += wt[0];
    tatsum += tat[0];

    // Calculate waiting time, turnaround time, and completion time for remaining processes
    for (int i = 1; i < n; i++)
    {
        if (ct[i - 1] > at[i])
        {
            ct[i] = ct[i - 1] + bt[i]; // Completion time = previous completion time + burst time
        }
        else
        {
            ct[i] = at[i] + bt[i]; // If the process arrives after the previous process completes
        }
        tat[i] = ct[i] - at[i]; // Turnaround time = completion time - arrival time
        wt[i] = tat[i] - bt[i]; // Waiting time = turnaround time - burst time
        wtsum += wt[i];         // Add waiting time to total
        tatsum += tat[i];       // Add turnaround time to total
    }

    // Output: Process details with arrival time, burst time, waiting time, turnaround time, and completion time
    printf("\nPROCESS\tARRIVAL TIME\tBURST TIME\tWAITING TIME\tTURNAROUND TIME\tCOMPLETION TIME\n");
    for (int i = 0; i < n; i++)
    {
        printf("P%d\t\t%d\t\t%d\t\t%d\t\t%d\t\t%d\n", i, at[i], bt[i], wt[i], tat[i], ct[i]);
    }

    // Calculate average waiting time and turnaround time
    wtavg = wtsum / n;
    tatavg = tatsum / n;

    // Output: Average waiting time and turnaround time
    printf("\nAverage Waiting Time: %.2f", wtavg);
    printf("\nAverage Turnaround Time: %.2f\n", tatavg);

    return 0; // Return 0 to indicate successful execution
}
