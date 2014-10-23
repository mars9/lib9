include ../make.mk

CFLAGS+=-I../include
LIB=libregexp9.a
OFILES=\
	regcomp.o\
	regerror.o\
	regexec.o\
	regsub.o\
	regaux.o\
	rregexec.o\
	rregsub.o\

HFILES=\
	../include/regexp.h\
	../include/regexp9.h\

all: $(LIB)

$(LIB): $(HFILES) $(OFILES)
	$(AR) $(ARFLAGS) $(LIB) $(OFILES)

.c.o:
	@echo $(CC) -o $@ -c $<
	@$(CC) $(CFLAGS) -o $@ -c $<

install: all
	$(INSTALL) -m 644 $(HFILES) $(PREFIX)/include
	$(INSTALL) -m 644 $(LIB) $(PREFIX)/lib/$(LIB)

clean:
	rm -f $(OFILES) $(LIB)

nuke: clean
