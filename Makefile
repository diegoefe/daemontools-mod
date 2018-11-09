all: dtools servers servicios

dtools:
	package/compile

servers:
	$(MAKE) -C servers

servicios: servers
	$(MAKE) -C servicios

clean: clean-bin

clean-bin: clean-serv
	rm -rfv command
	rm -rfv compile 
		
clean-serv:
	#./stopit
	$(MAKE) -C servers clean
	$(MAKE) -C servicios clean

.PHONY: servers servicios
