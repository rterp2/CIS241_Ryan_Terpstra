#ifndef			__H__FILE_LIB__
#define			__H__FILE_LIB__
#include <stdlib.h>
#include <stdio.h>

/***********************************************************************
 * Function to read file and return the file size.
 *
 * @param path string for filename to be read.
 * @param contents address for file contents.
 * @return size_t size of file being read in bytes.
 *
 **********************************************************************/
size_t load_file(char* path, char** contents);


/***********************************************************************
 * Function to write file and return the file size.
 *
 * @param path string for filename to be written.
 * @param contents address for file contents.
 * @param size_t size of file being passed.
 * @return size_t size of file being written in bytes.
 *
 **********************************************************************/
size_t save_file(char* path, char* contents, size_t size);

#endif
