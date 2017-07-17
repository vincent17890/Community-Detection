# it is a test
CC=g++
CFLAGS=-Wall -c
INCLUDE=/home/vincent/gsl/include
LIBRARY=/home/vincent/gsl/lib
GSLFLAGS=-lgsl -lgslcblas -lm
test.out:test.o
	$(CC) -L$(LIBRARY) test.o $(GSLFLAGS) -o test.out
test.o:test.cpp
	$(CC) -I$(INCLUDE) $(CFLAGS) test.cpp -o test.o
clean:
	rm -f test.out
