#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

// Function that each thread will execute
void *doprocess(void *arg)
{
    printf("Thread ID: %lu is running\n", pthread_self());
    pthread_exit(NULL); // Terminate the thread
}

int main()
{
    int n, i;
    pthread_t *tid; // Pointer to hold thread IDs

    // Step 1: Prompt the user to enter the number of threads
    printf("Enter the number of threads to create: ");
    scanf("%d", &n);

    // Step 2: Allocate dynamic memory for thread IDs using calloc
    tid = (pthread_t *)calloc(n, sizeof(pthread_t));
    if (tid == NULL)
    {
        perror("Failed to allocate memory");
        exit(EXIT_FAILURE);
    }

    // Step 3: Create n threads
    for (i = 0; i < n; i++)
    {
        if (pthread_create(&tid[i], NULL, doprocess, NULL) != 0)
        {
            printf("Error creating thread %d\n", i);
            free(tid); // Free memory on error
            exit(EXIT_FAILURE);
        }
    }

    // Step 4: Use pthread_join() to wait for all threads to finish
    for (i = 0; i < n; i++)
    {
        if (pthread_join(tid[i], NULL) != 0)
        {
            printf("Error joining thread %d\n", i);
            free(tid); // Free memory on error
            exit(EXIT_FAILURE);
        }
    }

    // Free dynamically allocated memory
    free(tid);

    printf("All threads have finished execution.\n");
    return 0;
}
