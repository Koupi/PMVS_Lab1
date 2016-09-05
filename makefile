empty:	main.o libs
	gcc -o start main.o -L.

main.o:	main.c
	gcc -c main.c
	
hello_world.o:	hello_world.c
	gcc -c hello_world.c

goodby_world.o:		goodbye_world.c
	gcc -c goodbye_world.c

libs:	goodbye_world.o hello_world.o
	ar cr libs.a hello_world.o goodbye_world.o

clean:	
	rm -f *.o *.a start