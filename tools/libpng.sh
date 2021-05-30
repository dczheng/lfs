#!/bin/bash
source ./env.sh
pkg_url="https://downloads.sourceforge.net/libpng/libpng-1.6.37.tar.xz"

pat_ur="https://downloads.sourceforge.net/sourceforge/libpng-apng/libpng-1.6.37-apng.patch.gz"

zux-get \
&& gzip -cd $pat | patch -p1 \
&& ./configure --prefix=/usr --disable-static  \
&& make $mkopt \
&& make install \
&& mkdir -v /usr/share/doc/libpng-1.6.37 \
&& cp -v README libpng-manual.txt /usr/share/doc/libpng-1.6.37
