#include <stdio.h> // Standard input/output library

int main() // Main function where execution starts
{
    int bt[20], at[20], wt[20], tat[20], ct[20];                       // Arrays for burst time (bt), arrival time (at), waiting time (wt), turnaround time (tat), and completion time (ct)
    int n, completed[20] = {0}, current_time = 0, completed_count = 0; // n: number of processes, completed[]: track completed processes, current_time: current system time, completed_count: how many processes are done
    float wtsum = 0, tatsum = 0, wtavg, tatavg;                        // Variables for total waiting time, turnaround time, and averages

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

    // Main loop to calculate completion, waiting, and turnaround times
    while (completed_count < n)
    {
        int shortest_job = -1; // Index of the process with the shortest burst time
        int min_bt = 9999;     // Initialize with a large value to find the minimum burst time

        // Find the process with the shortest burst time that has arrived and is not completed
        for (int i = 0; i < n; i++)
        {
            if (at[i] <= current_time && !completed[i] && bt[i] < min_bt)
            {
                min_bt = bt[i];
                shortest_job = i;
            }
        }

        // If no process has arrived, move the current time forward
        if (shortest_job == -1)
        {
            current_time++;
        }
        else
        {
            // Update completion time for the selected process
            ct[shortest_job] = current_time + bt[shortest_job];      // Completion time = current time + burst time
            tat[shortest_job] = ct[shortest_job] - at[shortest_job]; // Turnaround time = completion time - arrival time
            wt[shortest_job] = tat[shortest_job] - bt[shortest_job]; // Waiting time = turnaround time - burst time

            // Update totals for average calculations
            wtsum += wt[shortest_job];
            tatsum += tat[shortest_job];

            // Mark the process as completed
            completed[shortest_job] = 1;
            completed_count++;

            // Move current time forward
            current_time = ct[shortest_job];
        }
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
