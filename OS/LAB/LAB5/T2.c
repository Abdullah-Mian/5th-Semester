#include <stdio.h>
#include <pthread.h>

// Define the function for the thread
void *doprocess(void *arg)
{
    printf("Thread ID: %lu\n", pthread_self());
    pthread_exit(NULL); // Terminate the thread
}

// Main function where execution begins
int main()
{
    pthread_t thread[5]; // Declare a pthread variable
    int result;

    // Create a 5 new threads
    for (int i = 0; i < 5; i++)
    {
        result = pthread_create(&thread[i], NULL, doprocess, NULL);
        if (result != 0)
        {
            printf("Error creating thread: %d\n", result);
            return 1;
        }
        printf("main function thread ID: %lu\n", pthread_self());
        printf("DoProcess thread ID: %lu\n", thread[i]);
    }

    // Wait for 5 threads to finish
    for (int i = 0; i < 5; i++)
    {
        result = pthread_join(thread[i], NULL);
        if (result != 0)
        {
            printf("Error joining thread: %d\n", result);
            return 1;
        }
    }

    printf("5 Threads has finished execution.\n");
    return 0;
}
