libjnacurses.so: jnacurses.c
	gcc -shared -o $@ jnacurses.c -lcurses
.PHONY: install
install: libjnacurses.so
	sudo install -m 755 libjnacurses.so /usr/lib
	sudo ldconfig
.PHONY: clean
clean:
	-rm libjnacurses.so
