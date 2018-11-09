all: dtools servers servicios

dtools:
	package/compile

servers:
	$(MAKE) -C servers

servicios:
	$(MAKE) -C servicios

clean:
	./stopit
	rm -rfv command
	rm -rfv compile 
	$(MAKE) -C servers clean
	$(MAKE) -C servicios clean
		
.PHONY: servers servicios
