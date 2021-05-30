#!/bin/bash
source ./env.sh
pkg_url="https://ftp.pcre.org/pub/pcre/pcre-8.44.tar.bz2"

zux-get \
&& ./configure --prefix=/usr                     \
            --docdir=/usr/share/doc/pcre-8.44 \
            --enable-unicode-properties       \
            --enable-pcre16                   \
            --enable-pcre32                   \
            --enable-pcregrep-libz            \
            --enable-pcregrep-libbz2          \
            --enable-pcretest-libreadline     \
            --disable-static                 \
&& make $mkopt \
&& make install \
&& mv -v /usr/lib/libpcre.so.* /lib \
&& ln -sfv ../../lib/$(readlink /usr/lib/libpcre.so) /usr/lib/libpcre.so
