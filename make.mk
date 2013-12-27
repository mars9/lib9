PREFIX=/usr/local

CC=cc
AR=ar
INSTALL=install
CFLAGS+=-Wall -Wno-parentheses -Wno-missing-braces
ARFLAGS=rsc

OBJTYPE=$(shell uname -m | sed 's;.*i[3-6]86.*;386;; s;.*amd64.*;x86_64;; s;.*armv.*;arm;g;')
OBJTYPE!=uname -m | sed 's;.*i[3-6]86.*;386;; s;.*amd64.*;x86_64;; s;.*armv.*;arm;g;'
