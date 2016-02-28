PREFIX=/usr/local

CC=cc
AR=ar
INSTALL=install
CFLAGS+=-Wall -Wno-parentheses -Wno-missing-braces -Wno-unneeded-internal-declaration -Wno-deprecated-declarations
ARFLAGS=rsc

SYSNAME=$(shell uname)
SYSNAME!=uname
OBJTYPE=$(shell uname -m | sed 's;.*i[3-6]86.*;386;; s;.*amd64.*;x86_64;; s;.*armv.*;arm;g;')
OBJTYPE!=uname -m | sed 's;.*i[3-6]86.*;386;; s;.*amd64.*;x86_64;; s;.*armv.*;arm;g;'
