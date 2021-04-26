#include "sorter.h"

/*********************************************************************** 
 * Function to perform insertion sort by copying contents strings, 
 * sorting them, and setting the contents of contents to a newly sorted
 * string. 
 *
 * @param contents pointer to string
 * @param size of the string contents
 *
 **********************************************************************/
void sort(char** contents, int size) {
	
	// track number of newlines in contents	
	int numNewLines = 1;
	
	// create pointer to iterate through contents one line at a time
	char* ptr = strtok(*contents, "\n");
	
	// count number of newlines to find total lines
	for (int j = 0; j < size; ++j) {
		if ((*contents)[j] == '\n'){
			numNewLines++;
		}
	}

	// initialize variable to store words in array
	char** w_array = malloc(sizeof(char*) * numNewLines);
	
	// loop and variable to initialize indices of array
	int i = 0;
	while(ptr != NULL){
		// set index
		w_array[i++] = ptr;
		// set pointer to next char segment
		ptr = strtok(NULL, "\n");
	}
	
	// declare variables to operate insertion sort algo
	char* key;
	int j, k;
	for (j = 1; j < numNewLines; ++j) {
		key = w_array[j];
		k = j - 1;
		// determine if current word lexigraphically after key
		while (k > -1 && (strcasecmp(w_array[k], key) > 0)) {
			w_array[k+1] = w_array[k];
			--k;
		}
		w_array[k+1] = key;
	}
		
	// declare and initialize array to hold w_arrays contents 
	char tempStr[numNewLines * 10];
	for (int l = 0; l < numNewLines; ++l) {
		strcat(tempStr, w_array[l]);
		strcat(tempStr, "\n");
	}
	
	// set values inside contents to string of sorted words
	*contents = tempStr;

	// free up memory malloc'd
	free(w_array);
}
