#!/bin/bash
source ./env.sh
pkg_url="https://download.gnome.org/sources/vala/0.50/vala-0.50.3.tar.xz"
zux-get \
&& ./configure --prefix=/usr              \
&& make $mkopt \
&& make install

