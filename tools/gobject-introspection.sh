#!/bin/bash
source ./env.sh
url="https://download.gnome.org/sources/gobject-introspection/1.66/gobject-introspection-1.66.1.tar.xz"

zux-get \
&& mkdir build \
&& cd build \
&& meson --prefix=/usr .. \
&& ninja \
&& ninja install
