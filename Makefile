LIBDIRS=\
	lib9\
	libbio\
	libregexp\

all: build-libs
install: install-libs
uninstall: uninstall-libs
clean: clean-libs
nuke: nuke-libs

build-libs:
	@for i in $(LIBDIRS); do (cd $$i; make); done

install-libs:
	@for i in $(LIBDIRS); do (cd $$i; make install); done

uninstall-libs:
	@for i in $(LIBDIRS); do (cd $$i; make uninstall); done

clean-libs:
	@for i in $(LIBDIRS); do (cd $$i; make clean); done

nuke-libs:
	@for i in $(LIBDIRS); do (cd $$i; make clean); done
	@rm -f lib/*.a
