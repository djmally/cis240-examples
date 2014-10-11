#include "linked_file.h"

int do_something(int x)
{
    int sum = 0;
    for(int i = 0; i < x; i++) {
        sum += i;
    }
    printf("%d\n", sum);
    return sum;
}

