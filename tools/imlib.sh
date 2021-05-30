#!/bin/bash
source ./env.sh
pkg_url="https://downloads.sourceforge.net/enlightenment/imlib2-1.7.1.tar.bz2"
zux-get \
&& mkdir build \
&& cd build \
&& ../configure --prefix=/usr      \
            --disable-static \
&& make $mkopt  \
&& make install
