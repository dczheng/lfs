#!/bin/bash
source ./env.sh
pkg_url="https://s3.amazonaws.com/json-c_releases/releases/json-c-0.15.tar.gz"

zux-get \
&& mkdir build \
&& cd build \
&& cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release -DBUILD_STATIC_LIBS=OFF .. \
&& make $mkopt \
&& make install
