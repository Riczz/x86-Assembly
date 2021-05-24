#ifndef ASM
#define ASM

/* 
 * This function returns the number
 * of words in a given input string.
 */
extern int word_count(char *str);

/*
 * This function replaces occurrences of target_char in
 * the input char array[] to replace_char value and returns the 
 * total number of characters replaced.
 * output[] is the modified array.
 */
extern int replaceChar(char array[], char target_char, char replace_char, char output[]);

#endif
