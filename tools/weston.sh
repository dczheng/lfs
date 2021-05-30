#!/bin/bash
source ./env.sh
pkg_url="https://gitlab.freedesktop.org/wayland/weston/-/archive/9.0.0/weston-9.0.0.tar.gz"

zux-get \
&& mkdir build \
&& cd build \
&& meson --prefix=/usr ..
