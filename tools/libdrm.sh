#!/bin/bash
source ./env.sh
url="https://dri.freedesktop.org/libdrm/libdrm-2.4.102.tar.xz"

zux-get \
&& mkdir build \
&& cd    build \
&& meson --prefix=/usr -Dudev=true \
&& ninja \
&& ninja install
