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
    pthread_t thread; // Declare a pthread variable
    int result;

    // Create a new thread
    result = pthread_create(&thread, NULL, doprocess, NULL);
    if (result != 0)
    {
        printf("Error creating thread: %d\n", result);
        return 1;
    }
    printf("main function thread ID: %lu\n", pthread_self());
    printf("DoProcess thread ID: %lu\n", thread);
    // Wait for the thread to finish
    result = pthread_join(thread, NULL);
    if (result != 0)
    {
        printf("Error joining thread: %d\n", result);
        return 1;
    }

    printf("Threads has finished execution.\n");
    return 0;
}
