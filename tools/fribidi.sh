#!/bin/bash
source ./env.sh
url="https://github.com/fribidi/fribidi/releases/download/v1.0.9/fribidi-1.0.9.tar.xz"

zux-get \
&& mkdir build \
&& cd build \
&& meson --prefix=/usr .. \
&& ninja \
&& ninja install
