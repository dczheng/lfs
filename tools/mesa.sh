#!/bin/bash
source ./env.sh
pkg_url="ftp://ftp.freedesktop.org/pub/mesa/mesa-20.1.5.tar.xz"

zux-get \
&& sed '1s/python/&3/' -i bin/symbols-check.py \
&& mkdir build \
&& cd    build  \
&& meson --prefix=/usr -Dllvm=false -Dgallium-drivers="i915,iris" -Ddri-drivers="i965"  -Dvulkan-drivers="intel"  \
&& ninja \
&& ninja install \
&& install -v -dm755 /usr/share/doc/mesa-20.1.5 \
&& cp -rfv ../docs/* /usr/share/doc/mesa-20.1.5
