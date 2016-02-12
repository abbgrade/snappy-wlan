.DEFAULT_GOAL := snap

DESTDIR ?= .
SNAPNAME = $(shell find ./ -type f ! -iname "Makefile" -printf "%f\n" | head -1)
SNAPROOT = $(shell cd ../../.. && pwd)

trace:
	@echo DESTDIR:   $(DESTDIR)
	@echo SNAPNAME:  $(SNAPNAME)
	@echo SNAPROOT:  $(SNAPROOT)
	@echo

magic-bin/x86_64-linux-gnu:
	mkdir $(SNAPROOT)/parts/magic-bin/build/magic-bin/x86_64-linux-gnu --parents

magic-bin/arm-linux-gnueabihf:
	mkdir $(SNAPROOT)/parts/magic-bin/build/magic-bin/arm-linux-gnueabihf --parents

build_amd64: magic-bin/x86_64-linux-gnu
	cd $(SNAPROOT)/parts/$(SNAPNAME)/src && GOPATH=$(SNAPROOT)/parts/$(SNAPNAME)/go go build -o $(SNAPROOT)/parts/magic-bin/build/magic-bin/x86_64-linux-gnu/$(SNAPNAME)
		
build_arm: magic-bin/arm-linux-gnueabihf
	cd $(SNAPROOT)/parts/$(SNAPNAME)/src && GOPATH=$(SNAPROOT)/parts/$(SNAPNAME)/go  GOARCH=arm go build -o $(SNAPROOT)/parts/magic-bin/build/magic-bin/arm-linux-gnueabihf/$(SNAPNAME)

snap: trace build_amd64 build_arm
	cp $(SNAPNAME) $(SNAPROOT)/parts/magic-bin/build/magic-bin

pull:
	echo foobar

install:
	cp -R  $(SNAPROOT)/parts/magic-bin/build/magic-bin ../install/
	rm $(SNAPROOT)/parts/magic-$(SNAPNAME)-makefile/install/*
	rm ./*

clean:
	rm -rf $(SNAPROOT)/parts/magic-bin