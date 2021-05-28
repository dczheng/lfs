#!/bin/bash
source ./env.sh

url="https://wayland.freedesktop.org/releases/wayland-1.19.0.tar.xz"
zux-get \
&& ./configure --prefix=/usr --disable-static --disable-documentation \
&& make $mkopt \
&& make install

cd $zdir
