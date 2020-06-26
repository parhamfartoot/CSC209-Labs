/* The purpose of this program is to practice writing signal handling
 * functions and observing the behaviour of signals.
 */

#include <stdio.h>
#include <signal.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/time.h>

/* Message to print in the signal handling function. */

#define MESSAGE "%ld reads were done in %ld seconds.\n"

/* Global variables to store number of read operations and seconds elapsed.
 */
long num_reads, seconds;


/* The first command-line argument is the number of seconds to set a timer to run.
 * The second argument is the name of a binary file containing 100 ints.
 * Assume both of these arguments are correct.
 */
void handler(int sig) {
    if(sig == SIGPROF) {
        printf(MESSAGE, num_reads, seconds);
        exit(0);
    }
}

int main(int argc, char **argv) {
    if (argc != 3) {
        fprintf(stderr, "Usage: time_reads s filename\n");
        exit(1);
    }
    seconds = strtol(argv[1], NULL, 10);

    FILE *fp;
    if ((fp = fopen(argv[2], "r")) == NULL) {
      perror("fopen");
      exit(1);
    }

    struct itimerval time;

    time.it_value.tv_sec = seconds;
    time.it_value.tv_usec, time.it_interval.tv_sec,time.it_interval.tv_usec  = 0;
    setitimer(ITIMER_PROF, &time, NULL);

    struct sigaction action;

    action.sa_handler = handler;
    action.sa_flags = 0;

    sigemptyset(&action.sa_mask);

    if (sigaction(SIGPROF, &action, NULL) == -1) {
        perror("sigaction");
        exit(1);
    }


    /* In an infinite loop, read an int from a random location in the file,
     * and print it to stderr.
     */
    for (;;) {
        int dat;
        int rand = random() % 100;
        if(fseek(fp, sizeof(int) * rand, SEEK_SET) != 0)
            perror("fseek");
        fread(&dat, sizeof(int), 1, fp);
        printf("%d\n", dat);
        num_reads++;
    }
    return 1; // something is wrong if we ever get here!
}
