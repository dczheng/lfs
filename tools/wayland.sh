#!/bin/bash
source ./env.sh

pkg_url="https://wayland.freedesktop.org/releases/wayland-1.19.0.tar.xz"
zux-get \
&& ./configure --prefix=/usr --disable-static --disable-documentation \
&& make $mkopt \
&& make install

cd $tools_dir
