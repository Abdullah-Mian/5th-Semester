
/* Consumer Thread */
void *consumer(void *param) {
    buffer_item item;
    while (TRUE) {
        /* Sleep for a random period of time */
        int rNum = rand() / RAND_DIVISOR;
        sleep(rNum);

        /* Acquire the full lock */
        sem_wait(&full);
        /* Acquire the mutex lock */
        pthread_mutex_lock(&mutex);

        if (remove_item(&item)) {
            fprintf(stderr, "Consumer report error condition\n");
        } else {
            printf("Consumer consumed %d\n", item);
        }

        /* Release the mutex lock */
        pthread_mutex_unlock(&mutex);
        /* Signal empty */
        sem_post(&empty);
    }
}