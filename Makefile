PREFIX=$(PWD)

build:
	@mkdir -p $(PREFIX)/bin
	@g++ -Ofast -o $(PREFIX)/bin/fastreplacestring ./fastreplacestring.cpp

test:
	@node ./tests/test.js && node ./tests/xtest.js
