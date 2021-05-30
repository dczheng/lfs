#!/bin/bash
source ./env.sh
pkg_url="https://archive.mozilla.org/pub/nspr/releases/v4.29/src/nspr-4.29.tar.gz"

zux-get \
&& cd nspr \
&& sed -ri 's#^(RELEASE_BINS =).*#\1#' pr/src/misc/Makefile.in \
&& sed -i 's#$(LIBRARY) ##'            config/rules.mk         \
&& ./configure --prefix=/usr \
            --with-mozilla \
            --with-pthreads \
            $([ $(uname -m) = x86_64 ] && echo --enable-64bit) \
&& make $mkopt  \
&& make install
