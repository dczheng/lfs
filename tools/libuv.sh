#!/bin/bash
source ./env.sh
pkg_url="https://dist.libuv.org/dist/v1.41.0/libuv-v1.41.0.tar.gz"

zux-get \
&& sh autogen.sh \
&& ./configure --prefix=/usr --disable-static \
&& make $mkopt \
&& make install 
