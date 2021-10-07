all: bitflip

bitflip: bitflip.c
	gcc -O3 -Wall -W -pedantic -std=c99 -o bitflip bitflip.c

clean:
	rm bitflip

total:

	make bitflip
	./bitflip