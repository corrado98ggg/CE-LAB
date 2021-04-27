#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int conta(const char* c, int lunghezza);

int main() {

	const char* c = { "ciao luca ci sono: 8" };
	int m = strlen(c);
	conta(c, m);
}