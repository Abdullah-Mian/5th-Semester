#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>

#define BUFFER_SIZE 5
int buffer[BUFFER_SIZE];
int count = 0; // Number of items in the buffer
int in = 0;    // Index for producer to insert
int out = 0;   // Index for consumer to remove

void *consumer(void *arg)
{
    if (count > 0)
    { // Check if there's something to consume
        int item = buffer[out];
        out = (out + 1) % BUFFER_SIZE;
        count--;
        printf("Consumed item %d\n", item);
    }
    else
    {
        printf("Buffer is empty! Consumer waiting...\n");
    }
    sleep(1); // Simulate work
    return NULL;
}

void *producer(void *arg)
{

    if (count < BUFFER_SIZE)
    { // Check if there's space to produce
        int item = rand() % 100;
        buffer[in] = item;
        in = (in + 1) % BUFFER_SIZE;
        count++;
        printf("Produced item %d\n", item);
    }
    else
    {
        printf("Buffer is full! Producer waiting...\n");
    }
    sleep(1); // Simulate work
    return NULL;
}

int main()
{
    pthread_t producerThread, consumerThread;

    // Initialize buffer
    for (int i = 0; i < BUFFER_SIZE; i++)
    {
        // Create threads
        pthread_create(&producerThread, NULL, producer, NULL);
        pthread_create(&consumerThread, NULL, consumer, NULL);
    }

    // Wait for threads to finish (though they run indefinitely here)
    pthread_join(producerThread, NULL);
    pthread_join(consumerThread, NULL);
    pthread_exit(NULL);

    return 0;
}
