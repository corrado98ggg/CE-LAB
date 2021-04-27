#include <stdio.h>

int fattoriali(int* src, int* dst, int lunghezza);

int main()
{
	int src[3] = { 3,4,0 };
	int dst[3];
	int ret;
	fattoriali(src, dst, 3);
}
