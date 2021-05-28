#!/bin/bash
source ./env.sh
url="https://download.gnome.org/sources/gdk-pixbuf/2.42/gdk-pixbuf-2.42.2.tar.xz"

zux-get \
&& mkdir build \
&& cd build \
&& meson --prefix=/usr .. \
&& ninja \
&& ninja install
