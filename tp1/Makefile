CFLAGS=-Wall -g

all: regressions tp1
	:

regressions: regressions.c hash.c 
	$(CC) $(CFLAGS) -o regressions regressions.c hash.c

tp1: tp1.c hash.c
	$(CC) $(CFLAGS) -o tp1 tp1.c hash.c 

test: regressions
	./regressions

run_regressions: regressions
	./regressions

run: tp1
	./tp1

clean:
	rm -f regressions tp1
