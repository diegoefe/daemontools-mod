all: dtools servers local

dtools:
	package/compile

servers:
	$(MAKE) -C servers

local: servers
	$(MAKE) -C local

clean: clean-bin

clean-bin: clean-local
	rm -rfv command
	rm -rfv compile 
		
clean-local:
	$(MAKE) -C servers clean
	$(MAKE) -C local clean

.PHONY: servers local
