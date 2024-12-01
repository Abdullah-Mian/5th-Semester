
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
char buffer[] = "Lorem ipsum dolor sit amet";
// Buffer to be written in the infinite loop
char buff1[] = "Looper\n.......\n";
void SIGINT_handler(int sigro)
{
    write(STDOUT_FILENO, buffer, sizeof(buffer));
}
int main()
{

    struct sigaction act;
    act.sa_handler = SIGINT_handler;
    act.sa_flags = 0;
    sigaction(SIGINT, &act, NULL);
    for (;;)
    {
        sleep(1);
        write(STDOUT_FILENO, buff1, sizeof(buff1));
    }
}

/*
    The code above is a simple program that demonstrates the use of the sigaction() function to handle the SIGINT signal.
    The program defines a signal handler function called SIGINT_handler() that writes a message to the standard output when the SIGINT signal is received.
    The main() function sets up the signal handler using the sigaction() function and then enters an infinite loop that writes a message to the standard output every second.
    When the program is running, you can send the SIGINT signal to the process by pressing Ctrl+C, and the signal handler will be called to write the message to the standard output.
*/

// RUBBISH CODE
//  #include <stdio.h>  // Standard input/output definitions
//  #include <stdlib.h> // Standard library definitions
//  #include <unistd.h> // Standard symbolic constants and types
//  #include <signal.h>
//  #include <sys/types.h>
//  #include <sys/wait.h>
//  #include <string.h>

// // Buffer to be written when SIGINT is received
// char buffer[] = "Lorem ipsum dolor sit amet";
// // Buffer to be written in the infinite loop
// char buff1[] = "Looper\n.......\n";

// // Signal handler for SIGINT
// void SIGINT_handler(int sigro)
// {
//     // Write the buffer to standard output
//     write(STDOUT_FILENO, buffer, sizeof(buffer));
// }

// // Signal handler for SIGPIPE
// void SIGPIPE_handler(int sigro)
// {
//     // Write a message to standard output
//     char pipe_msg[] = "SIGPIPE received\n";
//     write(STDOUT_FILENO, pipe_msg, sizeof(pipe_msg));
// }

// int main()
// {
//     struct sigaction act_int, act_pipe;

//     // Set the signal handler for SIGINT
//     act_int.sa_handler = SIGINT_handler;
//     act_int.sa_flags = 0;
//     sigemptyset(&act_int.sa_mask);
//     // Register the signal handler for SIGINT
//     sigaction(SIGINT, &act_int, NULL);

//     // Set the signal handler for SIGPIPE
//     act_pipe.sa_handler = SIGPIPE_handler;
//     act_pipe.sa_flags = 0;
//     sigemptyset(&act_pipe.sa_mask);
//     // Register the signal handler for SIGPIPE
//     sigaction(SIGPIPE, &act_pipe, NULL);

//     // Infinite loop
//     for (;;)
//     {
//         // Sleep for 1 second
//         sleep(1);
//         // Write the buffer to standard output
//         write(STDOUT_FILENO, buff1, sizeof(buff1));
//     }
// }