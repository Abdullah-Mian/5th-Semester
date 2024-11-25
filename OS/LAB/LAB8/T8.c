int main(int argc, char *argv[]) {
    /* Loop counter */
    int i;

    /* Verify the correct number of arguments were passed in */
    if (argc != 4) {
        fprintf(stderr, "USAGE: ./main.out <INT> <INT> <INT>\n");
        return -1;
    }

    int mainSleepTime = atoi(argv[1]); /* Time in seconds for main to sleep */
    int numProd = atoi(argv[2]); /* Number of producer threads */
    int numCons = atoi(argv[3]); /* Number of consumer threads */

    /* Initialize the app */
    initializeData();

    /* Create the producer threads */
    for (i = 0; i < numProd; i++) {
        pthread_create(&tid, &attr, producer, NULL);
    }

    /* Create the consumer threads */
    for (i = 0; i < numCons; i++) {
        pthread_create(&tid, &attr, consumer, NULL);
    }

    /* Sleep for the specified amount of time in milliseconds */
    sleep(mainSleepTime);

   /* Exit the program */
    printf("Exit the program\n");
    exit(0);
}