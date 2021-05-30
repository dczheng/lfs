#!/bin/bash
source ./env.sh
pkg_url="https://github.com/nghttp2/nghttp2/releases/download/v1.43.0/nghttp2-1.43.0.tar.xz"

zux-get \
&& ./configure --prefix=/usr --disable-static --enable-lib-only --docdir=/usr/share/doc/nghttp2-1.43.0 \
&& make $mkopt \
&& make install
