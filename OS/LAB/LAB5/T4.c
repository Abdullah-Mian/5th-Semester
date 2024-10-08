#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

// Thread routine to display thread sequence and ID
void *doprocess(void *arg)
{
    int i;
    i = *((int *)arg); // Typecast the argument and assign to i
    printf("Thread sequence number: %d, Thread ID: %lu\n", i, pthread_self());
    pthread_exit(NULL); // Terminate the thread
}

int main()
{
    int n, i;
    pthread_t *tid; // Pointer to hold thread IDs
    int *index;     // Array to store sequence numbers

    // Step 1: Prompt the user to enter the number of threads
    printf("Enter the number of threads to create: ");
    scanf("%d", &n);

    // Step 2: Allocate dynamic memory for thread IDs and sequence numbers
    tid = (pthread_t *)calloc(n, sizeof(pthread_t));
    index = (int *)calloc(n, sizeof(int)); // Allocate memory for sequence numbers

    if (tid == NULL || index == NULL)
    {
        perror("Failed to allocate memory");
        exit(EXIT_FAILURE);
    }

    // Step 3: Create n threads
    for (i = 0; i < n; i++)
    {
        index[i] = i + 1; // Store the sequence number
        if (pthread_create(&tid[i], NULL, doprocess, &index[i]) != 0)
        {
            printf("Error creating thread %d\n", i);
            free(tid);
            free(index);
            exit(EXIT_FAILURE);
        }
    }

    // Step 4: Use pthread_join() to wait for all threads to finish
    for (i = 0; i < n; i++)
    {
        if (pthread_join(tid[i], NULL) != 0)
        {
            printf("Error joining thread %d\n", i);
            free(tid);
            free(index);
            exit(EXIT_FAILURE);
        }
    }

    // Free dynamically allocated memory
    free(tid);
    free(index);

    printf("All threads have finished execution.\n");
    return 0;
}
