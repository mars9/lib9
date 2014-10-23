include ../make.mk

CFLAGS+=-I../include
LIB=libbio.a
OFILES=\
	bbuffered.o\
	bfildes.o\
	bflush.o\
	bgetc.o\
	bgetrune.o\
	bgetd.o\
	binit.o\
	boffset.o\
	bprint.o\
	bputc.o\
	bputrune.o\
	brdline.o\
	brdstr.o\
	bread.o\
	bseek.o\
	bvprint.o\
	bwrite.o\

HFILES=\
	../include/bio.h\

all: $(LIB)

$(LIB): $(HFILES) $(OFILES)
	$(AR) $(ARFLAGS) $(LIB) $(OFILES)

.c.o:
	@echo $(CC) -o $@ -c $<
	@$(CC) $(CFLAGS) -o $@ -c $<

install: all
	install -m 644 $(HFILES) $(PREFIX)/include
	install -m 644 $(LIB) $(PREFIX)/lib/$(LIB)

clean:
	rm -f $(OFILES) $(LIB)

nuke: clean
