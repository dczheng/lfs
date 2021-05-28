#!/bin/bash
source ./env.sh

url="https://wayland.freedesktop.org/releases/wayland-protocols-1.21.tar.xz"

zux-get \
&& ./configure --prefix=/usr
make &mkopt
make install

cd $zdir

