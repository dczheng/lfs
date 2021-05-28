#!/bin/bash
source ./env.sh
url="https://download.gnome.org/sources/pango/1.48/pango-1.48.4.tar.xz"

zux-get \
&& mkdir build \
&& cd build \
&& meson --prefix=/usr .. \
&& ninja \
&& ninja install
