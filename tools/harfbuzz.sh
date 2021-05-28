#!/bin/bash
source ./env.sh

url="https://github.com/harfbuzz/harfbuzz/releases/download/2.8.1/harfbuzz-2.8.1.tar.xz"

zux-get \
&& mkdir build \
&& cd build \
&& meson --prefix=/usr -Dgraphite=enabled -Dbenchmark=disabled \
&& ninja \
&& ninja install
