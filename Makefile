PREFIX=$(PWD)

ifeq (, $(shell which x86_64-w64-mingw32-g++))
GCC=g++
else
GCC=x86_64-w64-mingw32-g++
endif


build:
	@echo Using compiler: $(GCC)
	@mkdir -p $(PREFIX)/bin
	@$(GCC) -Ofast -o $(PREFIX)/bin/fastreplacestring ./fastreplacestring.cpp

test:
	@node ./tests/test.js && node ./tests/xtest.js
