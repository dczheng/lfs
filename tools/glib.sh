#!/bin/bash
source ./env.sh
pkg_url="https://download.gnome.org/sources/glib/2.66/glib-2.66.7.tar.xz"

zux-get \
&& mkdir build \
&& cd build \
&& meson --prefix=/usr      \
      -Dman=true         \
      -Dselinux=disabled \
      ..                 \
&& ninja \
&& ninja install \
&& mkdir -p /usr/share/doc/glib-2.66.7 \
&& cp -r ../docs/reference/{NEWS,gio,glib,gobject} /usr/share/doc/glib-2.66.7
