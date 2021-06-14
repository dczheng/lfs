#!/bin/bash
source ./env.sh
pkg_url="https://ftp.gnu.org/gnu/nettle/nettle-3.7.1.tar.gz"
zux-get \
&& ./configure --prefix=/usr --disable-static \
&& make $mkopt \
&& make install \
&& chmod   -v   755 /usr/lib/lib{hogweed,nettle}.so \
&& install -v -m755 -d /usr/share/doc/nettle-3.7.1 \
&& install -v -m644 nettle.html /usr/share/doc/nettle-3.7.1
