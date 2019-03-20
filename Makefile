all: libtest.a static_main 

objects = test1.o test2.o test3.o
dir = ${shell pwd}

libtest.a : ${objects}
	ar rc libtest.a ${objects}

libtest.so : ${objects}
	gcc -shared -fPIC -o libtest.so ${objects}

static_main : libtest.a main.cpp
	gcc main.cpp -L. -ltest -o static_main

dynamic_main : libtest.so main.cpp
	gcc main.cpp -o dynamic_main -L. -ltest

PHONY: clean ldconf
clean:
	rm -rf *.o *_main *.so *.a