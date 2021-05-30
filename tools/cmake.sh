#!/bin/bash
source ./env.sh
pkg_url="https://cmake.org/files/v3.18/cmake-3.18.1.tar.gz"

zux-get \
&& sed -i '/"lib64"/s/64//' Modules/GNUInstallDirs.cmake \
&& ./bootstrap --prefix=/usr        \
            --system-libs        \
            --mandir=/share/man  \
            --no-system-jsoncpp  \
            --no-system-librhash \
            --docdir=/share/doc/cmake-3.18.1 \
&& make $mkopt \
&& make install

