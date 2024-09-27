CC=gcc
CFLAGS=-I.

# при выполнении make all будут собраны обе программы
all : sequential_min_max parallel_min_max

exec_sequential : exec_sequential.c
	$(CC) -o exec_sequential exec_sequential.c $(CFLAGS)

# сборка программы sequential_min_max
sequential_min_max : utils.o find_min_max.o utils.h find_min_max.h
	$(CC) -o sequential_min_max find_min_max.o utils.o sequential_min_max.c $(CFLAGS)

parallel_min_max : utils.o find_min_max.o utils.h find_min_max.h
	$(CC) -o parallel_min_max utils.o find_min_max.o parallel_min_max.c $(CFLAGS)

# компиляция utils.c в объектный файл utils.o
utils.o : utils.h
	$(CC) -o utils.o -c utils.c $(CFLAGS)

# компиляция find_min_max.c в объектный файл find_min_max.o
find_min_max.o : utils.h find_min_max.h
	$(CC) -o find_min_max.o -c find_min_max.c $(CFLAGS)

# удаляет все скомпилированные файлы и исполняемые программы
clean :
	rm utils.o find_min_max.o sequential_min_max parallel_min_max

# предотвращает конфликты, если в директории случайно окажутся файлы с именами "all" или "clean"
.PHONY: all clean