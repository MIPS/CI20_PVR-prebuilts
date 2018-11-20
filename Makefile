DESTDIR ?= ${DISCIMAGE}
SRCDIR = ./targetfs

prefix = /usr
libdir = ${prefix}/lib
incdir = ${prefix}/include
bindir = ${prefix}/bin
localdir = ${prefix}/local
native_libdir = /lib

all:

install: 
	mkdir -p ${DESTDIR}${libdir}
	mkdir -p ${DESTDIR}${incdir}
	mkdir -p ${DESTDIR}${bindir}
	mkdir -p ${DESTDIR}${localdir}/XSGX
	mkdir -p ${DESTDIR}${native_libdir}
	cp -ar ${SRCDIR}/usr/lib/* ${DESTDIR}${libdir}
	cp -ar ${SRCDIR}/usr/include/* ${DESTDIR}${incdir}
	cp -ar ${SRCDIR}/usr/bin/* ${DESTDIR}${bindir}
	cp -ar ${SRCDIR}/lib/* ${DESTDIR}${native_libdir}
