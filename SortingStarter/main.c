#include "file_lib.h"
#include "sorter.h"
#include <stdio.h>
	
/*
 * Read the file from the command-line.
 * Usage:
 * ./a.out FILE_TO_READ FILE_TO_WRITE
 *
 */

int main(int argc, char** argv){
	// Read the original file.
	char* contents;
	size_t size = load_file("out_of_order_file",&contents);
	//for (size_t i = 0; i < size; i++){
	//	printf("%c",contents[i]);
	//}
	

	// Sort the file with the function you wrote.
	sort(&contents,size);
	

	// Write out the new file.
	save_file("sorted_file", contents, size);	
	
}

// You can see if your file worked correctly by using the
// command:
//
// diff ORIGINAL_FILE NEW_FILE
//
// If the command returns ANYTHING the files are different.
