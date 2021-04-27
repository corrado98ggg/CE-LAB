#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int contaspazi(const char* c, int lunghezza);

int main() {

	const char* c = "raffaele gay capo degli ebrei";
	int lu = strlen(c);
	
	int ret = contaspazi(c, lu);

	printf("gli spazi delle stringa:");
	printf("\n");
	for (int i = 0; i < lu; i++) {
		printf("%c", c[i]);
	}
	printf("\n");

	printf("e': %d", ret);

	return 0;
}