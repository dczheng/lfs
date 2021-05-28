#!/bin/bash
source ./env.sh
url="https://downloads.sourceforge.net/libpng/libpng-1.6.37.tar.xz"

wget https://downloads.sourceforge.net/sourceforge/libpng-apng/libpng-1.6.37-apng.patch.gz -P $pdir

zux-get \
&& gzip -cd $pdir/libpng-1.6.37-apng.patch.gz | patch -p1 \
&& ./configure --prefix=/usr --disable-static  \
&& make $mkopt \
&& make install \
&& mkdir -v /usr/share/doc/libpng-1.6.37 \
&& cp -v README libpng-manual.txt /usr/share/doc/libpng-1.6.37
