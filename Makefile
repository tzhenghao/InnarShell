# Compiler and standard.
CC = gcc

# Project name.
PROJ = fork_demo

# Source files.
SRCS = fork_demo.c

# Object files.
OBJS = fork_demo.o

# Warnings flags.
CFLAGS = -Wshadow -Wall -Wpedantic -Wextra

# Debugging flags.
CFLAGS+= -g

# Optimization flags.
#CFLAGS+= -Ofast -march=native -flto -Wdouble-promotion

# Linker flags.
#LDFLAGS = -lm -lSDL2
LDFLAGS = -lreadline

# Linker.
$(PROJ): $(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $(PROJ)

# Compiler template; generates dependency targets.
%.o : %.c
	$(CC) $(CFLAGS) -o $@ -c $<

clean:
	rm -f $(PROJ)
	rm -f $(OBJS)
