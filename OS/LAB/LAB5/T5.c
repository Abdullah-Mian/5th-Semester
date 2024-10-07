#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

// Global integer array to hold sequence numbers
int sequence[5] = {1, 2, 3, 4, 5};

// Thread routine to display thread sequence number and thread ID
void *doprocess(void *arg)
{
    int i;
    i = *((int *)arg); // Typecast the argument and assign to i
    printf("Thread sequence number: %d, Thread ID: %lu\n", i, pthread_self());
    pthread_exit(NULL); // Terminate the thread
}

int main()
{
    pthread_t tid[5]; // Statically allocated array for 5 thread IDs
    int i;

    // Step 1: Loop to create 5 threads and pass the sequence number
    for (i = 0; i < 5; i++)
    {
        // Step 2: Pass the address of the sequence number to the thread routine
        if (pthread_create(&tid[i], NULL, doprocess, &sequence[i]) != 0)
        {
            printf("Error creating thread %d\n", i);
            exit(EXIT_FAILURE);
        }
    }

    // Step 3: Use pthread_join() to wait for all threads to finish
    for (i = 0; i < 5; i++)
    {
        if (pthread_join(tid[i], NULL) != 0)
        {
            printf("Error joining thread %d\n", i);
            exit(EXIT_FAILURE);
        }
    }

    printf("All threads have finished execution.\n");
    return 0;
}
