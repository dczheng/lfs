#!/bin/bash
source ./env.sh
pkg_url="https://xkbcommon.org/download/libxkbcommon-1.0.3.tar.xz"

zux-get \
&& mkdir build \
&& cd build \
&& meson --prefix=/usr -Denable-docs=false -Denable-wayland=false ..\
&& ninja \
&& ninja install

cd $tools_dir
