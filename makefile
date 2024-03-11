FLAGS =-Wall -g
CC = gcc #if we want to change compiler

all: MyShell
	valgrind --leak-check=full --error-exitcode=1 ./myShell

myShell:MyShell.o MyFunctionShell.o
	$(CC) $(FLAGS) -o myShell mMShell.o MyFunctionShell.o


myShell.o: MyShell.c MyShell.h
	$(CC) $(FLAGS) -c MyShell.c 



myFunctionShell.o: MyFunctionShell.c MyFunctionShell.h
	$(CC) $(FLAGS) -c MyFunctionShell.c 



.PHONY: clean
clean:
	rm -f *.o *.a *.so ./MyShell