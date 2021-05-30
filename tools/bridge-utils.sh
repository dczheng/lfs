#!/bin/bash
source ./env.sh
pkg_url="https://www.kernel.org/pub/linux/utils/net/bridge-utils/bridge-utils-1.7.1.tar.xz"
zux-get \
&& autoconf \
&& ./configure --prefix=/usr      \
&& make $mkopt  \
&& make install
