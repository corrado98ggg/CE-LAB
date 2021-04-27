#include <stdio.h>

void prodotto(int* v, int* t, int ret, int lunghezza);



int main() {

	int v[] = { 1,2,3 };
	int t[] = { 2,3,4 };
	int ret[3];
	int lunghezza = 3;

	prodotto(v,t, ret, lunghezza);
}