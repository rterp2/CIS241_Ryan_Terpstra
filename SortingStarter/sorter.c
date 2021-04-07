#include <stdio.h>
#include <stdlib.h>
#include <string.h>


/* sorter function
 */


void sort(char** contents, int size){

    int i = 0;
    char* p = strtok(*contents, "\n");

    // this does not make an array it makes a single hunk
    char *array = malloc(sizeof(int) * size);

    //right here do a count with while loop

    // this will make the array
    // char **array = mallac(sizeof(char*) * numnewlines)

    while (p != NULL)
    {

            array[i++] = *p;
            p = strtok (NULL, "\n");
    }

    for (i = 0; i<size; i++)
            printf("%s\n", &array[i]);

    return 0;
    }

}


