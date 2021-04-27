#include <stdio.h>
#include <stdlib.h>

void moltiplicazione(int* vett, int* mol, int* aaa, int lunghezza);

int main(void) {

	int vett[] = { 1,2,3,4 };
	int mol[] = { 2,3,2,2 };
	int aaa[] = { 1,1,1,1 };
	int lunghezza = 4;
	moltiplicazione(vett, mol, aaa, lunghezza);
}