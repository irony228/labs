.PHONY: clean run asm

OBJS = file1.o fact.o
CC = gcc
CFLAGS = -Wall -Wextra -Wpedantic -O3 -g

run: fact
	./fact

fact: $(OBJS)
	$(CC) $(CFLAGS) -o fact $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -f fact $(OBJS)

asm:
	$(CC) -S -o fact.s fact.c
	$(CC) -S -o file1.s file1.c

