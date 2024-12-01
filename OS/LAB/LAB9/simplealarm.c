// Task 5
// Example 8.8: simplealarm.c
// #include <unistd.h>
// int main(void)
// {
//     alarm(10);
//     for (;;)
//         ;
// }

#include <stdio.h>  // printf
#include <signal.h> // signal
#include <unistd.h> // _exit

void handle_alarm(int sig) // signal handler
{
    printf("Timeout. Returning the card.\n"); // print message
    _exit(0);                                 // exit
}

int main(void) // main function
{
    signal(SIGALRM, handle_alarm);      // signal handler
    alarm(5);                           // set alarm
    printf("Please enter your PIN:\n"); // print message
    sleep(3);
    printf("Wrong PIN Fool! xD\n"); // sleep for 10 seconds
    for (;;)                        // infinite loop
        ;                           // do nothing

    alarm(0); // cancel alarm
    return 0; // return 0
} // end main function

/*
    The program will print "Please enter your PIN:" and then wait for 5 seconds.
    After 5 seconds, the program will print "Timeout. Returning the card." and exit.

*/