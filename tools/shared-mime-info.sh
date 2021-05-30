#!/bin/bash
source ./env.sh
#pkg_url="https://gitlab.freedesktop.org/xdg/shared-mime-info/-/archive/2.1/shared-mime-info-2.1.tar.bz2"
pkg_url="https://gitlab.freedesktop.org/xdg/shared-mime-info/-/archive/Release-1-15/shared-mime-info-Release-1-15.tar.bz2"

#zux-get \
#&& mkdir build \
#&& cd build \
#&& meson --prefix=/usr  -Dupdate-mimedb=true .. \
#&& ninja \
#&& ninja install

zux-get \
&& ./autogen.sh \
&& ./configure --prefix=/usr \
&& make $mkopt \
&& make install
