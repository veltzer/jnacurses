.PHONY: all
all: libjnacurses.so
	@true
libjnacurses.so: jnacurses.c
	@gcc -shared -fpic -o $@ jnacurses.c -lcurses
.PHONY: install
install: libjnacurses.so
	sudo install -m 755 libjnacurses.so /usr/lib
	sudo ldconfig
.PHONY: clean
clean:
	@rm libjnacurses.so
