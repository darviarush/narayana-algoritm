.PHONY: all dub clean

all: elsie-four-x
	./elsie-four-x test.txt a 10240 1 3


elsie-four-x: elsie-four-x.c elsie-four/lc4.h
	gcc -static -o elsie-four-x elsie-four-x.c

elsie-four.exe: elsie-four-x.c elsie-four/lc4.h
	wine 'c:/program files/gnuwin32/getgnuwin32/bin/gcc' -o elsie-four.exe elsie-four-x.c

dublios: dublios.c
	gcc dublios.c -o dublios

dub: dublios
	./dublios "dublios-data/#_23456789abcdefghijklmnopqrstuvwxyz b.txt"


clean:
	rm -f dublios elsie-four.exe elsie-four-x

