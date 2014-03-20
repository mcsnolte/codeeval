#include <stdio.h>
#include <string.h>

int main ( int argc, char *argv[] ) {
	FILE *f = fopen(argv[1], "r");
	char *line = NULL;
	size_t len = 0;
	size_t read;

	while ((read = getline(&line, &len, f)) != -1) {
		char seps[] = " ";
		char *token;

		int f;
		token = strtok( line, seps );
		sscanf(token, "%i", &f);

		int b;
		token = strtok( NULL, seps );
		sscanf(token, "%i", &b);

		int x;
		token = strtok( NULL, seps );
		sscanf(token, "%i", &x);

		for ( int i = 1; i < x; i++ ) {
			if ( i % f == 0 && i % b == 0 ) {
				printf("FB");
			}
			else if ( i % f == 0 ) {
				printf("F");
			}
			else if ( i % b == 0 ) {
				printf("B");
			}
			else {
				printf("%i", i);
			}
			if ( i < x ) {
				printf(" ");
			}
		}
		printf("\n");
	}

    return 0;
}
