#!/bin/bash
source ./env.sh
pkg_url="https://github.com/libfuse/libfuse/releases/download/fuse-3.10.3/fuse-3.10.3.tar.xz"
zux-get \
&& mkdir build \
&& cd build \
&& meson --prefix=/usr .. \
&& ninja \
&& ninja install
