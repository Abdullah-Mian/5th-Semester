#define BUFFER_SIZE 5
int buffer[BUFFER_SIZE];
int count = 0; // Number of items in the buffer
int in = 0;    // Index for producer to insert
int out = 0;   // Index for consumer to remove

consumer()
{
    // Remove item from buffer
    int item = buffer[out];
    out = (out + 1) % BUFFER_SIZE;
    count--;
    printf("Consumed item %d\n", item);
}

producer()
{
    // Produce an item
    int item = rand() % 100;
    buffer[in] = item;
    in = (in + 1) % BUFFER_SIZE;
    count++;
    printf("Produced item %d\n", item);
}
