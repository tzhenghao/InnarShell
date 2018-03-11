# Compiler and standard.
CC = gcc

# Project name.
PROJ = innarshell

# Source files.
SRCS = innarshell.c

# Object files.
OBJS = innarshell.o

# Warnings flags.
CFLAGS = -Wshadow -Wall -Wpedantic -Wextra

# Debugging flags.
CFLAGS+= -g

# Optimization flags.
#CFLAGS+=

# Linker flags.
LDFLAGS = -lreadline

# Linker.
$(PROJ): $(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $(PROJ)

# Compiler template; generates dependency targets.
%.o : %.c
	$(CC) $(CFLAGS) -o $@ -c $<

.PHONY: clean
clean:
	rm -f $(PROJ)
	rm -f $(OBJS)
