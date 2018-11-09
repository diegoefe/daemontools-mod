all: servers

servers:
	./makeserv.sh 1
	./makeserv.sh 2
	./makeserv.sh 3

clean:
	../stopit
	rm -rfv real
	rm -rfv watch
