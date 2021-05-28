#!/bin/bash
source ./env.sh
url="https://github.com/thom311/libnl/releases/download/libnl3_5_0/libnl-3.5.0.tar.gz"
zux-get \
&& ./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --disable-static  \
&& make $mkopt \
&& make install
