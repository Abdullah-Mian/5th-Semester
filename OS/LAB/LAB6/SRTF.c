#include <stdio.h>
#include <limits.h>

typedef struct
{
    int pid;             // Process ID
    int arrival_time;    // Arrival time
    int burst_time;      // Burst time
    int remaining_time;  // Remaining time
    int completion_time; // Completion time
    int waiting_time;    // Waiting time
    int turnaround_time; // Turnaround time
} Process;

void calculateTimes(Process processes[], int n)
{
    int current_time = 0, completed = 0, min_remaining_time;
    int shortest = -1, finish_time;
    int total_waiting_time = 0, total_turnaround_time = 0;
    int is_completed[n]; // Tracks if a process is completed or not

    // Initialize remaining times and completion status
    for (int i = 0; i < n; i++)
    {
        is_completed[i] = 0;
        processes[i].remaining_time = processes[i].burst_time;
    }

    // Loop until all processes are completed
    while (completed != n)
    {
        min_remaining_time = INT_MAX;
        shortest = -1;

        // Find the process with the shortest remaining time that has arrived
        for (int i = 0; i < n; i++)
        {
            if (processes[i].arrival_time <= current_time && !is_completed[i] && processes[i].remaining_time < min_remaining_time)
            {
                min_remaining_time = processes[i].remaining_time;
                shortest = i;
            }
        }

        // If no process is ready, move to the next time unit
        if (shortest == -1)
        {
            current_time++;
            continue;
        }

        // Execute the process for one time unit
        processes[shortest].remaining_time--;
        current_time++;

        // If the process finishes, calculate its completion, waiting, and turnaround times
        if (processes[shortest].remaining_time == 0)
        {
            completed++;
            finish_time = current_time;
            processes[shortest].completion_time = finish_time;
            processes[shortest].turnaround_time = finish_time - processes[shortest].arrival_time;
            processes[shortest].waiting_time = processes[shortest].turnaround_time - processes[shortest].burst_time;

            total_waiting_time += processes[shortest].waiting_time;
            total_turnaround_time += processes[shortest].turnaround_time;

            is_completed[shortest] = 1;
        }
    }

    // Output process information and average times
    printf("\nPID\tArrival\tBurst\tCompletion\tWaiting\tTurnaround\n");
    for (int i = 0; i < n; i++)
    {
        printf("%d\t%d\t%d\t%d\t\t%d\t%d\n",
               processes[i].pid,
               processes[i].arrival_time,
               processes[i].burst_time,
               processes[i].completion_time,
               processes[i].waiting_time,
               processes[i].turnaround_time);
    }

    printf("\nAverage Waiting Time: %.2f\n", (float)total_waiting_time / n);
    printf("Average Turnaround Time: %.2f\n", (float)total_turnaround_time / n);
}

int main()
{
    int n;

    // Ask for the number of processes
    printf("Enter the number of processes: ");
    scanf("%d", &n);

    Process processes[n];

    // Collect arrival time and burst time separately for each process
    for (int i = 0; i < n; i++)
    {
        processes[i].pid = i + 1;
        printf("\nEnter arrival time for process %d: ", processes[i].pid);
        scanf("%d", &processes[i].arrival_time);

        printf("Enter burst time for process %d: ", processes[i].pid);
        scanf("%d", &processes[i].burst_time);
    }

    // Call function to calculate times and display process information
    calculateTimes(processes, n);

    return 0;
}