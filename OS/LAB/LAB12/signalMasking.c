#include <stdio.h>
#include <signal.h>
#include <unistd.h>

void signal_handler(int signo) {
    switch (signo) {
        case SIGINT:
            printf("Caught SIGINT (Interrupt from keyboard).\n");
            break;
        case SIGPIPE:
            printf("Caught SIGPIPE (Broken pipe).\n");
            break;
        case SIGQUIT:
            printf("Caught SIGQUIT (Quit from keyboard).\n");
            break;
        case SIGALRM:
            printf("Caught SIGALRM (Alarm clock termination).\n");
            break;
        case SIGKILL:
            printf("Caught SIGKILL (Kill signal).\n");
            break;
        default:
            printf("Caught unexpected signal: %d\n", signo);
            break;
    }
}

int main() {
    struct sigaction act;
    act.sa_handler = signal_handler;
    act.sa_flags = 0;

    sigaction(SIGINT, &act, NULL);
    sigaction(SIGPIPE, &act, NULL);
    sigaction(SIGQUIT, &act, NULL);
    sigaction(SIGALRM, &act, NULL);
    sigaction(SIGKILL, &act, NULL);

    // Block SIGPIPE and SIGALRM
    sigset_t block_set;
    sigemptyset(&block_set);  // Initialize an empty set
    sigaddset(&block_set, SIGPIPE);  
    sigaddset(&block_set, SIGALRM); 
    sigaddset(&block_set, SIGINT); 
    sigaddset(&block_set, SIGKILL); 
    sigprocmask(SIG_BLOCK, &block_set, NULL);

    printf("SIGPIPE , SIGINT and SIGALRM are now blocked.\n");

    // Raise signals to see how they behave
    printf("Raising SIGINT...\n");
    raise(SIGINT);  // This should be handled immediately

    printf("Raising SIGPIPE...\n");
    raise(SIGPIPE);  // This will be blocked and not handled immediately

    printf("Raising SIGQUIT...\n");
    raise(SIGQUIT);  // This should be handled immediately
    printf("Raising SIGALRM...\n");
    raise(SIGALRM);  // This will be blocked and not handled immediately

    // Unblock SIGPIPE and SIGALRM
    printf("Unblocking signals...\n");
    sigprocmask(SIG_UNBLOCK, &block_set, NULL);

    // Signals should now be handled
    printf("SIGPIPE and SIGALRM are now unblocked. Handlers should execute.\n");

    // Raise the blocked signals again
    printf("Raising SIGPIPE...\n");
    raise(SIGPIPE);  // Now this will be handled

    printf("Raising SIGALRM...\n");
    raise(SIGALRM);  // Now this will be handled

    return 0;
}
