#!/bin/bash
source ./env.sh
pkg_url="https://ftp.gnu.org/gnu/libtasn1/libtasn1-4.16.0.tar.gz"
zux-get \
&& ./configure --prefix=/usr --disable-static \
&& make $mkopt \
&& make install
