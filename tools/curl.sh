#!/bin/bash
source ./env.sh

pkg_url="https://cpkg_url.haxx.se/download/curl-7.71.1.tar.xz"
pat_url="http://www.linuxfromscratch.org/patches/blfs/10.0/curl-7.71.1-security_fixes-1.patch"

zux-get \
&& patch -Np1 -i $pat \
&& ./configure --prefix=/usr \
            --disable-static   \
            --enable-threaded-resolver  \
            --with-ca-path=/etc/ssl/certs \
&& make $mkopt \
&& make install \
&& rm -rf docs/examples/.deps \
&& find docs \( -name Makefile\* -o -name \*.1 -o -name \*.3 \) -exec rm {} \; \
&& install -v -d -m755 /usr/share/doc/cpkg_url-7.71.1 \
&& cp -v -R docs/*     /usr/share/doc/cpkg_url-7.71.1
