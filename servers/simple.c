#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <sys/types.h>
#include <unistd.h>

int aborted = 0;

void sig_handler(int signo) {
	if(signo == SIGINT) {
		fprintf(stderr, "received SIGINT\n");
		aborted = 1;
	}
}

int main(int argc, char** argv) {
	int salto=1, num;

	if(argc != 2) {
		fprintf(stderr, "Uso: %s numeroDeServer\n", argv[0]);
		return 1;
	}
	num = atoi(argv[1]);

	if(signal(SIGINT, sig_handler) == SIG_ERR) {
		printf("\ncan't catch SIGINT\n");
	}
	printf("running simple server #%d with PID: %d\n", num, getpid());

	while(!aborted)  {
		printf(".");
		fflush(stdout);
		if(0 == (salto % 50)) {
			printf("\n");
			salto = 0;
		}
		++salto;
		sleep(1);
	}
	return 0;
}

