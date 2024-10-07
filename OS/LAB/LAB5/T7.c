#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

// Global integer counter
int counter = 0;

// Declare a global mutex variable
pthread_mutex_t counter_mutex;

// Thread routine to display thread ID and increment counter
void *doprocess(void *arg)
{
    int thread_num = *((int *)arg); // Get the thread sequence number

    // Introduce a delay using a for loop with 1 billion iterations
    for (int i = 0; i < 1000000000; i++)
        ;

    // Lock the mutex before accessing the critical section
    pthread_mutex_lock(&counter_mutex);

    // Increment the global counter and print it with the thread ID
    counter++;
    printf("Thread sequence number: %d, Thread ID: %lu, Counter value: %d\n", thread_num, pthread_self(), counter);

    // Unlock the mutex after exiting the critical section
    pthread_mutex_unlock(&counter_mutex);

    pthread_exit(NULL); // Terminate the thread
}

int main()
{
    pthread_t tid[5];                  // Array for 5 thread IDs
    int sequence[5] = {1, 2, 3, 4, 5}; // Static sequence numbers
    int i;

    // Initialize the mutex
    pthread_mutex_init(&counter_mutex, NULL);

    // Create 5 threads
    for (i = 0; i < 5; i++)
    {
        if (pthread_create(&tid[i], NULL, doprocess, &sequence[i]) != 0)
        {
            printf("Error creating thread %d\n", i);
            exit(EXIT_FAILURE);
        }
    }

    // Wait for all threads to finish
    for (i = 0; i < 5; i++)
    {
        if (pthread_join(tid[i], NULL) != 0)
        {
            printf("Error joining thread %d\n", i);
            exit(EXIT_FAILURE);
        }
    }

    // Destroy the mutex
    pthread_mutex_destroy(&counter_mutex);

    printf("All threads have finished execution. Final Counter value: %d\n", counter);
    return 0;
}
