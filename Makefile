all: dtools servers

dtools:
	package/compile

servers:
	$(MAKE) -C servers

clean:
	rm -rfv command
	rm -rfv compile 
	$(MAKE) -C servers clean
	
