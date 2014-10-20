#include "linked_file.h"

#include <stdio.h>

int main(int argc, char **argv)
{
    for(int i = 0; i < argc; i++) {
        printf("Argument %d: %s\n", i, argv[i]);
    }
    do_something(42);
    do_something(100);
    do_something(-25);
    do_something(1024);
}
