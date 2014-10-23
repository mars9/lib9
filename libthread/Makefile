include ../make.mk

CFLAGS+=-I../include
LIB=libthread.a
SYSOFILES=$(shell sysofiles.sh $(SYSNAME) $(OBJTYPE))
SYSOFILES!=./sysofiles.sh $(SYSNAME) $(OBJTYPE)
OFILES=\
	$(SYSOFILES)\
	channel.o\
	daemonize.o\
	exec.o\
	ioproc.o\
	iorw.o\
	ref.o\
	thread.o\
	wait.o\

HFILES=\
	../include/thread.h\

all: $(LIB)

$(LIB): $(HFILES) $(OFILES)
	$(AR) $(ARFLAGS) $(LIB) $(OFILES)

.c.o:
	@echo $(CC) -o $@ -c $<
	@$(CC) $(CFLAGS) -o $@ -c $<

FreeBSD.o: BSD.c
NetBSD.o: Linux.c

OpenBSD-$(OBJTYPE)-asm.o: OpenBSD-$(OBJTYPE)-asm.S
	$(CC) $(CFLAGS) -o $@ -c $<

install: all
	install -m 644 $(HFILES) $(PREFIX)/include
	install -m 644 $(LIB) $(PREFIX)/lib/$(LIB)

clean:
	rm -f $(OFILES) $(LIB)

nuke: clean
