# A simple, sample makefile that builds and links two C files with clang.
# Also contains a directive for cleaning.

# All the rules we want to build when we type `make` or `make all`.
# Rules will be built in the order they're listed.
all: main

# Build a .c file into an object file, a .o file, with clang -c.
# Note the extra flags after linked_file.c, namely -g -Wall etc.
# These are CFlags, and are passed to the compiler to enable
# warnings, debug information, etc.
#
# The first line of this directive states that the command named linked_file.o
# depends on two files, linked_file.c and linked_file.h. This directive will
# be run whenever either of those files changes and we run "make" or
# "make linked_file"
linked_file.o: linked_file.c linked_file.h
	clang -c linked_file.c -g -Wall -Wextra -Wpedantic

# Build a .c file into an executable called "main", linking linked_file.o,
# using clang -o. This directive depends on main.c and linked_file.o, and
# will therefore generate linked_file.o using the rule above if it does not
# exist.
main: main.c linked_file.o
	clang -o main main.c linked_file.o -g -Wall -Wextra -Wpedantic

# Run with `make clean`. Removes all object files, temp files, and TARGET itself.
# Will NOT delete any .c/.h files.
clean:
	rm *.o main
