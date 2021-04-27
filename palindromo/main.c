#include <stdio.h>

int palindromo(char* stringa);

int main()
{
	char src[255] = "A mK agA Mm a";
	int ret;
	ret = palindromo(src);

	printf("% d", ret);
	return ret;
}
