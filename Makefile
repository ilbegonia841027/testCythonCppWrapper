program: main.o add.o
	g++ -o program main.o add.o

main.o: main.cpp add.h
	g++ -c main.cpp

add.o: add.cpp add.h
	g++ -c add.cpp
