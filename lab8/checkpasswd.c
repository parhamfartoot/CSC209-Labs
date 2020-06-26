#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

#define MAXLINE 256
#define MAX_PASSWORD 10

#define SUCCESS "Password verified\n"
#define INVALID "Invalid password\n"
#define NO_USER "No such user\n"

int main(void) {
  char user_id[MAXLINE];
  char password[MAXLINE];
  int pip[2];
  int stat;

  /* The user will type in a user name on one line followed by a password 
     on the next.
     DO NOT add any prompts.  The only output of this program will be one 
	 of the messages defined above.
   */

  if(fgets(user_id, MAXLINE, stdin) == NULL) {
      perror("fgets");
      exit(1);
  }
  if(fgets(password, MAXLINE, stdin) == NULL) {
      perror("fgets");
      exit(1);
  }


  if (pipe(pip) < 0) {
        perror("pipe");
        exit(1);
  }

  int ch = fork();
  if (ch < 0) {
        perror("fork");
        exit(1);
  }

  if (ch > 0) {
      if (close(pip[0]) == -1) {
          perror("close");
          exit(1);
      }
      if (write(pip[1], user_id, MAX_PASSWORD) == -1) {
          perror("write");
          exit(1);
      }
      if (write(pip[1], password, MAX_PASSWORD) == -1) {
          perror("write");
          exit(1);
      }
      if (close(pip[1]) == -1) {
          perror("close");
          exit(1);
      }
  }
  else
      {
      if (dup2(pip[0], STDIN_FILENO) == -1) {
          perror("dup2");
          exit(1);
      }
      if (close(pip[1]) == -1) {
          perror("close");
          exit(1);
      }
      if (close(pip[0]) == -1) {
          perror("close");
          exit(1);
      }
      execl("./validate", "validate", NULL);
      perror("execl");
      exit(1);
      }

    wait(&stat);

  if (WIFEXITED(stat)) {

      int exit_code = WEXITSTATUS(stat);

      if (exit_code == 0 )
          printf(SUCCESS);

      if (exit_code == 2 )
          printf(INVALID);

      if (exit_code == 3 )
          printf(NO_USER);
    }
    return 0;
}