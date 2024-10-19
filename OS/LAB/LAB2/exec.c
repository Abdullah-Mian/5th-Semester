#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/wait.h>

int main() {
    pid_t pid = fork();  // Create a child process

    if (pid < 0) {
        // Fork failed
        perror("Fork failed");
        exit(1);
    } else if (pid == 0) {
        // Child process
        printf("Child Process Id=%d and Parent Id=%d\n", getpid(), getppid());

        // Execute 'ls -l'
        execl("/bin/ls", "ls", "-l", NULL);

        // If exec fails
        perror("execl failed");
        exit(1);
    } else {
        // Parent process
        wait(NULL);  // Wait for the child to finish
        printf("Child process has finished executing.\n");
    }

    return 0;
}
/*
Child Process Id=9797 and Parent Id=9796
total 144
drwxr-xr-x 2 broken broken  4096 Sep 11 17:22 Desktop
drwxr-xr-x 2 broken broken  4096 Sep 16 09:12 Documents
drwxr-xr-x 5 broken broken  4096 Sep 21 22:16 Downloads
-rw-rw-r-- 1 broken broken   587 Sep 16 11:20 L2T2a.c
-rw-rw-r-- 1 broken broken     7 Sep 15 15:42 L_C
drwxr-xr-x 2 broken broken  4096 Sep 11 17:21 Music
drwxr-xr-x 2 broken broken  4096 Sep 11 17:21 Pictures
drwxr-xr-x 2 broken broken  4096 Sep 11 17:21 Public
drwxr-xr-x 2 broken broken  4096 Sep 11 17:21 Templates
drwxr-xr-x 2 broken broken  4096 Sep 11 17:21 Videos
-rwxrwxr-x 1 broken broken 16168 Sep 21 22:16 a.out
-rw-rw-r-- 1 broken broken   689 Sep 21 22:24 exec.c
-rwxrwxr-x 1 broken broken 16288 Sep 21 22:35 exec.out
-rw-rw-r-- 1 broken broken   398 Sep 16 10:16 fork.c
-rwxrwxr-x 1 broken broken 16080 Sep 16 10:01 l2t2b
-rw-rw-r-- 1 broken broken   546 Sep 16 10:59 l2t2b.c
-rw-rw-r-- 1 broken broken   886 Sep 16 11:20 l2t2c.c
-rw-rw-r-- 1 broken broken   859 Sep 16 11:00 l2t3.c
-rw-rw-r-- 1 broken broken   862 Sep 16 11:20 l2t4.c
-rw-rw-r-- 1 broken broken   204 Sep 16 09:23 pret.c
-rwxrwxr-x 1 broken broken 15992 Sep 16 09:27 pret.out
drwx------ 3 broken broken  4096 Sep 13 11:16 snap
-rw-rw-r-- 1 broken broken   556 Sep 16 09:48 t1.c
-rw-rw-r-- 1 broken broken   691 Sep 16 11:20 tree.c
Child process has finished executing.
*/
