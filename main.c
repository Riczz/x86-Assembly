#include <stdio.h>
#include "asm.h"

#define TARGET 'T'
#define REPLACE 'B'

char *str = "Test string for functions.";
char tmp[32];

int main() {
	
	//Word count
	printf("Number of words in\t\t\"%s\": %d\n",str,word_count(str));
	
	//Character replacement
	int replacedChars = replaceChar(str,TARGET,REPLACE,tmp);
	printf("Replace char (%c -> %c) in\t\"%s\": \"%s\" (%d replacement)\n",TARGET,REPLACE,str,tmp,replacedChars);
	
	getchar();
	return 0;
}
