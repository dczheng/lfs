#!/bin/bash
source ./env.sh

url="https://downloads.sourceforge.net/freetype/freetype-2.10.2.tar.xz"
wget https://downloads.sourceforge.net/freetype/freetype-doc-2.10.2.tar.xz -P $pdir

zux-get \
&& tar xvf $pdir/freetype-doc-2.10.2.tar.xz --strip-components=2 -C docs \
&& sed -ri "s:.*(AUX_MODULES.*valid):\1:" modules.cfg \
&& sed -r "s:.*(#.*SUBPIXEL_RENDERING) .*:\1:" \
    -i include/freetype/config/ftoption.h  \
&& ./configure --prefix=/usr --enable-freetype-config --disable-static \
&& make $mkopt \
&& make install \
&& install -v -m755 -d /usr/share/doc/freetype-2.10.2 \
&& cp -v -R docs/* /usr/share/doc/freetype-2.10.2 \
&& rm -v /usr/share/doc/freetype-2.10.2/freetype-config.1
