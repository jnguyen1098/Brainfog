CC = clang
CFLAGS = -Wall -Wpedantic -Wextra -ggdb

run: fog
	bash test_all.sh

fog: fog.o
	$(CC) $(CFLAGS) fog.o -o fog

fog.o: 
	$(CC) $(CFLAGS) -c fog.c -o fog.o

clean:
	rm -rf fog.o fog tmp_output
