#!/bin/bash
source ./env.sh
pkg_url="http://anduin.linuxfromscratch.org/BLFS/cairo/cairo-1.17.2+f93fc72c03e.tar.xz"

zux-get \
&& autoreconf -fv \
&& ./configure --prefix=/usr --disable-static --enable-tee \
&& make $mkopt \
&& make install
