// Fifo code Page replacement
// Comment the code
// run the code
// give number of pages say 10
// enter page numbers, take any string of 10 page numbers and enter one by one
// enter the number of frames
// say 3 frames
// now see the output the page faults

//-------------------------------------------------------------------------------------------------------

// Task 1 (a)
// add the code in it to find the hit ratio and miss ratio
// execute the code for different string of same length say if you have run before with length 10
// and frame size 3
// find the hit ratio and miss ratio

// Task 1(b)
// you need to take length atleast 20 in the previous two scenarios because
// in the next task we are increasing the frame size so length 10 will not give us better results

// Task 1(c) Increase the frame size to 4 and observe
// the output with hit ratio and miss ratio what results you observed with this increase of frame size
// execute Task 1(c) i.e increase frame size of 4 with the same last two strings in the Task 1(a) and Task 1(b)

#include <stdio.h> // Include standard input-output library

int main() // Main function
{
    int i, j, n, a[50], frame[10], no, k, avail, count = 0, hits = 0; // Declare variables

    printf("\n ENTER THE NUMBER OF PAGES:\n"); // Prompt user to enter the number of pages
    scanf("%d", &n);                           // Read the number of pages

    printf("\n ENTER THE PAGE NUMBER :\n"); // Prompt user to enter the page numbers
    for (i = 1; i <= n; i++)                // Loop to read page numbers
        scanf("%d", &a[i]);                 // Read each page number

    printf("\n ENTER THE NUMBER OF FRAMES :"); // Prompt user to enter the number of frames
    scanf("%d", &no);                          // Read the number of frames

    for (i = 0; i < no; i++) // Initialize all frames to -1
        frame[i] = -1;       // Set frame to -1 indicating empty

    j = 0;                                  // Initialize frame pointer to 0
    printf("\tref string\t page frames\n"); // Print header for output

    for (i = 1; i <= n; i++) // Loop through each page
    {
        printf("%d\t\t", a[i]); // Print current page number
        avail = 0;              // Reset availability flag

        for (k = 0; k < no; k++)  // Check if page is already in frame
            if (frame[k] == a[i]) // If page is found in frame
                avail = 1;        // Set availability flag

        if (avail == 0) // If page is not found in frame
        {
            frame[j] = a[i];  // Replace frame at position j with current page
            j = (j + 1) % no; // Move to next frame position in circular manner
            count++;          // Increment page fault count

            for (k = 0; k < no; k++)      // Loop to print current state of frames
                printf("%d\t", frame[k]); // Print each frame
        }
        else
        {
            hits++; // Increment hit count
        }
        printf("\n"); // Print newline for next page
    }

    printf("Page Faults: %d\n", count); // Print total number of page faults
    printf("Hits: %d\n", hits);         // Print total number of hits

    float hit_ratio = (float)hits / n;   // Calculate hit ratio
    float miss_ratio = (float)count / n; // Calculate miss ratio

    printf("Hit Ratio: %.2f\n", hit_ratio);                      // Print hit ratio
    printf("Miss Ratio: %.2f\n", miss_ratio);                    // Print miss ratio
    printf("\nHit Ratio Percentage: %.2f%%\n", hit_ratio * 100); // Print hit ratio percentage
    printf("Miss Ratio Percentage: %.2f%%\n", miss_ratio * 100); // Print miss ratio percentage
    return 0;                                                    // Return 0 to indicate successful execution
}

/*
Reference String
10 pages: 7, 0, 1, 2, 0, 3, 0, 4, 2, 3

Number of Frames: 3

OUTPUT:

faizy@faizy-latitudee5550:~/Desktop/OS_Lab8$ cd "/home/faizy/Desktop/OS_Lab8/" && gcc T1.c -o T1 && "/home/faizy/Desktop/OS_Lab8/"T1

 ENTER THE NUMBER OF PAGES:
10

 ENTER THE PAGE NUMBER :
7
0
1
2
0
3
0
4
2
3

 ENTER THE NUMBER OF FRAMES :3
        ref string       page frames
7               7       -1      -1
0               7       0       -1
1               7       0       1
2               2       0       1
0
3               2       3       1
0               2       3       0
4               4       3       0
2               4       2       0
3               4       2       3

Page Faults(Page Miss): 9
Hits: 1

Hit Ratio: 0.10
Miss Ratio: 0.90

Hit Ratio Percentage: 10.00%
Miss Ratio Percentage: 90.00%
*/