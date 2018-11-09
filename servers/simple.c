#include <stdio.h>
#include<stdio.h>
#include<signal.h>
#include<unistd.h>

int aborted = 0;

void sig_handler(int signo)
{
  if (signo == SIGINT) {
    fprintf(stderr, "received SIGINT\n");
    aborted = 1;
  }
}

int main(void)
{
  int salto=1;
  if (signal(SIGINT, sig_handler) == SIG_ERR) {
	  printf("\ncan't catch SIGINT\n");
  }
  // A long long wait so that we can easily issue a signal to this process
  while(!aborted)  {
	printf(".");
	fflush(stdout);
	if(0 == (salto % 50)) {
		printf("\n");
		salto = 0;
	}
	++salto;
	usleep(100);
  }
  return 0;
}

