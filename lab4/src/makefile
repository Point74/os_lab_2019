CC=gcc
CFLAGS = -Wall -Wno-format

all : sequential_min_max parallel_min_max exec_sequential process_memory utils.o find_min_max.o

sequential_min_max : utils.o find_min_max.o utils.h find_min_max.h
	$(CC) -o sequential_min_max find_min_max.o utils.o sequential_min_max.c $(CFLAGS)

parallel_min_max : utils.o find_min_max.o utils.h find_min_max.h
	$(CC) -o parallel_min_max utils.o find_min_max.o parallel_min_max.c $(CFLAGS)

exec_sequential : utils.o find_min_max.o utils.h find_min_max.h
	$(CC) -o exec_sequential exec_sequential.c $(CFLAGS)

process_memory : process_memory.o
	$(CC) -o process_memory process_memory.o

process_memory.o : 
	$(CC) -o process_memory.o -c process_memory.c $(CFLAGS)

utils.o : utils.h
	$(CC) -o utils.o -c utils.c $(CFLAGS)

find_min_max.o : utils.h find_min_max.h
	$(CC) -o find_min_max.o -c find_min_max.c $(CFLAGS)

clean :
	rm -f utils.o find_min_max.o sequential_min_max parallel_min_max exec_sequential process_memory process_memory.o