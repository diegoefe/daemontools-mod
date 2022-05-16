all: dtools servers local

dtools:
	package/compile

servers:
	$(MAKE) -C servers

local: servers
	$(MAKE) -C local

svwait: dtools
	$(MAKE) -C src/runit/src svwaitup svwaitdown
	cp -v src/runit/src/svwaitup command
	cp -v src/runit/src/svwaitdown command
	$(MAKE) -C src/runit/src clean

clean: clean-bin

clean-bin: clean-local
	rm -rfv command
	rm -rfv compile 
		
clean-local:
	$(MAKE) -C servers clean
	$(MAKE) -C local clean

.PHONY: servers local
