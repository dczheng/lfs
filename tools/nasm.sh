#!/bin/bash
source ./env.sh
url="http://www.nasm.us/pub/nasm/releasebuilds/2.15.05/nasm-2.15.05.tar.xz"
zux-get \
&& ./configure --prefix=/usr  \
&& make $mkopt \
&& make install \
