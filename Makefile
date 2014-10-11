# A sample makefile that builds and links two C files with clang.
# Also contains a directive for cleaning.

TARGET := sample # The name of the executable we're going to produce
OBJS := sample.o linked_file.o # All of the object files we need to link to produce an executable

CC := clang # CC, the C Compiler we're going to use
CFLAGS := -g -Wall -Wextra -Wpedantic # The flags we're going to pass to the
									  # compiler, in this case -g for debugging,
									  # -Wall, -Wextra, and -Wpedantic for extra
									  #  warnings.

# Indicates to Make that these targets are not files, and should not be checked
.PHONY: clean all

# All the rules we want to build when we type `make` or `make all`
all: ${TARGET}

# The rule for TARGET, which depends on OBJS. CC is then invoked with CFLAGS,
# generating all files in OBJS if they don't exist, and then linking them to
# produce TARGET.
${TARGET}: ${OBJS}
	${CC} ${CFLAGS} -o ${TARGET} ${OBJS}

# Run with `make clean`. Removes all object files, temp files, and TARGET itself.
# Will NOT delete any .c/.h files.
clean:
	${RM} *.o *~ ${TARGET}
