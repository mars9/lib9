include ../make.mk

CFLAGS+=-I../include
LIB=lib9.a
NUM=\
	fmt/charstod.o\
	fmt/pow10.o\

FMTOFILES=\
	fmt/dofmt.o\
	fmt/fltfmt.o\
	fmt/fmt.o\
	fmt/fmtfd.o\
	fmt/fmtfdflush.o\
	fmt/fmtlocale.o\
	fmt/fmtlock.o\
	fmt/fmtnull.o\
	fmt/fmtprint.o\
	fmt/fmtquote.o\
	fmt/fmtrune.o\
	fmt/fmtstr.o\
	fmt/fmtvprint.o\
	fmt/fprint.o\
	fmt/nan64.o\
	fmt/print.o\
	fmt/runefmtstr.o\
	fmt/runeseprint.o\
	fmt/runesmprint.o\
	fmt/runesnprint.o\
	fmt/runesprint.o\
	fmt/runevseprint.o\
	fmt/runevsmprint.o\
	fmt/runevsnprint.o\
	fmt/seprint.o\
	fmt/smprint.o\
	fmt/snprint.o\
	fmt/sprint.o\
	fmt/strtod.o\
	fmt/vfprint.o\
	fmt/vseprint.o\
	fmt/vsmprint.o\
	fmt/vsnprint.o\
	$(NUM)\

UTFOFILES=\
	utf/rune.o\
	utf/runestrcat.o\
	utf/runestrchr.o\
	utf/runestrcmp.o\
	utf/runestrcpy.o\
	utf/runestrdup.o\
	utf/runestrlen.o\
	utf/runestrecpy.o\
	utf/runestrncat.o\
	utf/runestrncmp.o\
	utf/runestrncpy.o\
	utf/runestrrchr.o\
	utf/runestrstr.o\
	utf/runetype.o\
	utf/utfecpy.o\
	utf/utflen.o\
	utf/utfnlen.o\
	utf/utfrrune.o\
	utf/utfrune.o\
	utf/utfutf.o\

LIB9OFILES=\
	_exits.o\
	_p9dialparse.o\
	_p9dir.o\
	announce.o\
	argv0.o\
	atexit.o\
	atoi.o\
	atol.o\
	atoll.o\
	atnotify.o\
	await.o\
	cistrcmp.o\
	cistrncmp.o\
	cistrstr.o\
	cleanname.o\
	convD2M.o\
	convM2D.o\
	convM2S.o\
	convS2M.o\
	create.o\
	ctime.o\
	dial.o\
	dirfstat.o\
	dirfwstat.o\
	dirmodefmt.o\
	dirread.o\
	dirstat.o\
	dirwstat.o\
	dup.o\
	encodefmt.o\
	errstr.o\
	exec.o\
	execl.o\
	exitcode.o\
	fcallfmt.o\
	get9root.o\
	getcallerpc-$(OBJTYPE).o\
	getenv.o\
	getfields.o\
	getnetconn.o\
	getns.o\
	getuser.o\
	getwd.o\
	jmp.o\
	lrand.o\
	lnrand.o\
	main.o\
	malloc.o\
	malloctag.o\
	mallocz.o\
	nan.o\
	needsrcquote.o\
	needstack.o\
	netmkaddr.o\
	notify.o\
	nrand.o\
	nulldir.o\
	open.o\
	opentemp.o\
	pin.o\
	pipe.o\
	post9p.o\
	postnote.o\
	qlock.o\
	quote.o\
	rand.o\
	read9pmsg.o\
	readcons.o\
	readn.o\
	rfork.o\
	searchpath.o\
	seek.o\
	sendfd.o\
	sleep.o\
	strdup.o\
	strecpy.o\
	sysfatal.o\
	syslog.o\
	sysname.o\
	time.o\
	tm2sec.o\
	tokenize.o\
	truerand.o\
	u16.o\
	u32.o\
	u64.o\
	unsharp.o\
	wait.o\
	waitpid.o\
	write.o\
	zoneinfo.o\

OFILES=\
	$(LIB9OFILES)\
	$(FMTOFILES)\
	$(UTFOFILES)\

HFILES=\
	../include/fcall.h\
	../include/fmt.h\
	../include/lib9.h\
	../include/libc.h\
	../include/u.h\
	../include/utf.h\

all: $(LIB)

$(LIB): $(HFILES) $(OFILES)
	$(AR) $(ARFLAGS) $(LIB) $(OFILES)

.c.o:
	$(CC) $(CFLAGS) -o $@ -c $<

install: all
	install -m 644 $(HFILES) $(PREFIX)/include
	install -m 644 $(LIB) $(PREFIX)/lib/$(LIB)

clean:
	rm -f $(OFILES) $(LIB)

nuke: clean
