DESTDIR ?= ${DISCIMAGE}
SRCDIR_KM = ./sgx_km
SRCDIR_UM = ./sgx_um
SRCDIR_DEV = ./sgx_dev

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
	mkdir -p ${DESTDIR}${native_libdir}
	mkdir -p ${DESTDIR}${localdir}/XSGX
	cp -ar ${SRCDIR_UM}${libdir}/* ${DESTDIR}${libdir}
	cp -ar ${SRCDIR_UM}${bindir}* ${DESTDIR}${bindir}
	cp -ar ${SRCDIR_UM}${native_libdir}/* ${DESTDIR}${native_libdir}
	cp -ar ${SRCDIR_KM}${native_libdir}/* ${DESTDIR}${native_libdir}
	cp -ar ${SRCDIR_DEV}${incdir}/* ${DESTDIR}${incdir}
	cp -ar ${SRCDIR_DEV}${libdir}/* ${DESTDIR}${libdir}
