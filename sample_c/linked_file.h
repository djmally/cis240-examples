// The two lines below, and the #endif at the end of the file, are known as
// "include guards". They prevent problems that arise from including a file more
// than once. Consider this simple case: file_one.c includes file_one.h and
// file_two.h, and file_two.h in turn includes file_one.h, because it references
// a type defined in that header. Without include guards, file_one.h will be
// included more than once by file_one.c, and the compiler will complain. The two
// lines below will prevent this by stopping this header from being compiled if
// the symbol __LINKED_FILE_H__ is already defined, and defining it if it is not.
// Note that you DO NOT need these for .c files, as you should never be including
// a .c file from another .c file.
#ifndef __LINKED_FILE_H__
#define __LINKED_FILE_H__

#include <stdio.h>

int do_something(int x);

#endif
