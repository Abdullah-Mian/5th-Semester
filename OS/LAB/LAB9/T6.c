// Signal Masking
/*
1. Write the signal handler for receiving set of signals.
2. In main function, prepare a set of signals to be block.
3. sigset_t set; will be prepared
4. Addsignals in the sigset_t variable through sigadd() function.
5. sigsetempty() function will be used to empty the set.
6. Block all the signals in the set through sigprocmask() function.
7. Block  the signals in the set through sigprocmask() for specific section of code.
8. Generate the signals which are blocked, For loop for certain big number of iterations.
9. Those signals will be generated but status will be pending.
10. Unblock the signals after executing the specific section of code.
11. THose signals become available and go to the signal handler.
12. The signal handler will catch those signals and display the appropriate message.
*/

// #include <stdio.h>
// #include <signal.h>
// #include <unistd.h>

// void signal_handler(int signum) {
//     printf("Caught signal %d\n", signum);
// }

// int main() {
//     sigset_t set;
//     struct sigaction sa;

//     // Prepare the signal handler
//     sa.sa_handler = signal_handler;
//     sa.sa_flags = 0;
//     sigemptyset(&sa.sa_mask);

//     // Register signal handlers
//     sigaction(SIGINT, &sa, NULL);
//     sigaction(SIGTERM, &sa, NULL);

//     // Prepare the set of signals to be blocked
//     sigemptyset(&set);
//     sigaddset(&set, SIGINT);
//     sigaddset(&set, SIGTERM);

//     // Block the signals in the set
//     sigprocmask(SIG_BLOCK, &set, NULL);

//     // Critical section of code
//     for (int i = 0; i < 100000000; i++) {
//         // Simulate work
//     }

//     // Unblock the signals
//     sigprocmask(SIG_UNBLOCK, &set, NULL);

//     // Pause to wait for signals
//     pause();

//     return 0;
// }


#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <string.h>

// Signal handler for SIGINT and SIGTERM
void signal_handler(int sig) {
    if (sig == SIGINT) {
        printf("Caught SIGINT\n");
    } else if (sig == SIGTERM) {
        printf("Caught SIGTERM\n");
    }
}

int main() {
    sigset_t set;

    // Step 1: Initialize the signal set to empty
    sigemptyset(&set);

    // Step 2: Add SIGINT and SIGTERM to the set
    sigaddset(&set, SIGINT);
    sigaddset(&set, SIGTERM);

    // Step 3: Set the signal handler for SIGINT and SIGTERM
    if (signal(SIGINT, signal_handler) == SIG_ERR) {
        perror("Unable to catch SIGINT");
        exit(1);
    }
    if (signal(SIGTERM, signal_handler) == SIG_ERR) {
        perror("Unable to catch SIGTERM");
        exit(1);
    }

    // Step 4: Block the signals in the set
    if (sigprocmask(SIG_BLOCK, &set, NULL) == -1) {
        perror("sigprocmask failed");
        exit(1);
    }
    
    // Step 5: Generate signals while they are blocked
    for (int i = 0; i < 10; ++i) {
        printf("Iteration %d: Generating signals\n", i);
        // Send SIGINT and SIGTERM signals (they will be pending)
        kill(getpid(), SIGINT);
        kill(getpid(), SIGTERM);
        usleep(100000);  // Sleep for 100ms
    }

    // Step 6: Unblock the signals
    printf("Unblocking signals\n");
    if (sigprocmask(SIG_UNBLOCK, &set, NULL) == -1) {
        perror("sigprocmask unblock failed");
        exit(1);
    }

    // Step 7: The signals will now be caught by the signal handler
    // Wait to catch signals
    pause(); // Pause until a signal is received

    return 0;
}
