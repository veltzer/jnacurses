##############
# parameters #
##############
# do you want to show the commands executed ?
DO_MKDBG:=0
# do you want dependency on the Makefile itself ?
DO_ALLDEP:=1

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
.PHONY: clean_hard
clean_hard:
	$(info doing [$@])
	@git clean -qffxd

##########
# alldep #
##########
ifeq ($(DO_ALLDEP),1)
.EXTRA_PREREQS+=$(foreach mk, ${MAKEFILE_LIST},$(abspath ${mk}))
endif # DO_ALLDEP
