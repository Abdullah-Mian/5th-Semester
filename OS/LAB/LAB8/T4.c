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

main()
{
    int i, n;
    for (i = 0; i < BUFFER_SIZE; i++)
    {
        buffer[i] = -1;
    }
    printf("\n1. Press 1 for Producer"
           "\n2. Press 2 for Consumer"
           "\n3. Press 3 for Exit");
    for (i = 1; i > 0; i++)
    {
        printf("\nEnter your choice:");
        scanf("%d", &n);

        // Switch Cases
        switch (n)
        {
        case 1:
            if (count < BUFFER_SIZE)
            {
                producer();
            }
            else
            {
                printf("Buffer is full!\n");
            }
            break;
        case 2:
            if (count > 0)
            {
                consumer();
            }
            else
            {
                printf("Buffer is empty!\n");
            }
            break;
        case 3:
            exit(0);
            break;
        }
    }
    return 0;
}