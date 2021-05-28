#!/bin/bash
source ./env.sh
url="https://www.cairographics.org/releases/pixman-0.40.0.tar.gz"

zux-get \
&& mkdir build \
&& cd    build \
&& meson --prefix=/usr \
&& ninja \
&& ninja install
