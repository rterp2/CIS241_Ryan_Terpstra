#include <stdio.h>
#include <stdlib.h>
#include <string.h>


/* sorter function
 */


void sort(char** contents, int size){

    int i = 0;
    int numNewLines = 0;
    char* p = strtok(*contents, "\n");
    //char* p2 = strtok(*contents,"\n");

    // this does not make an array it makes a single hunk
    char *string = malloc(sizeof(int) * size);

    //right here do a count with while loop
    while (p != NULL){
	    numNewLines ++;
	    p = strtok (NULL, "\n");
    }

    printf("there are %d newlines",numNewLines);
	    
    
    // this will make the array
    char **array = malloc(sizeof(char*) * numNewLines);
    p = strtok(*contents, "\n");
    
    while (p != NULL)
    {

            array[i++] = p;
            p = strtok (NULL, "\n");
    }

    for (i = 0; i<numNewLines; i++)
            printf("%s\n", array[i]);

}

