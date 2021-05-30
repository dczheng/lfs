#!/bin/bash
source ./env.sh

pkg_url="https://github.com/libevent/libevent/releases/download/release-2.1.12-stable/libevent-2.1.12-stable.tar.gz"

zux-get \
&& ./configure --disable-static --prefix=/usr \
&& make $mkopt \
&& make install \

cd $tools_dir

