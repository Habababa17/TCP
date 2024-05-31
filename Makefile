CC=gcc
CFLAGS=-std=gnu99 -g -Wall -fsanitize=address,undefined
LDFLAGS=-fsanitize=address,undefined
LDLIBS=-lpthread -lm -lrt

all: prog

prog: prog.o
		${CC} ${LDFLAGS} -o prog prog.o ${LDLIBS}
prog.o: Main.c
		${CC} -c ${CFLAGS} -o prog.o Main.c ${LDLIBS}


.PHONY: clean

clean:
		rm -f prog