#!/bin/bash
source ./env.sh
url="https://downloads.sourceforge.net/libjpeg-turbo/libjpeg-turbo-2.0.6.tar.gz"

zux-get \
&& mkdir build \
&& cd    build \
&& cmake -DCMAKE_INSTALL_PREFIX=/usr \
      -DCMAKE_BUILD_TYPE=RELEASE  \
      -DENABLE_STATIC=FALSE       \
      -DCMAKE_INSTALL_DOCDIR=/usr/share/doc/libjpeg-turbo-2.0.6 \
      -DCMAKE_INSTALL_DEFAULT_LIBDIR=lib  \
      .. \
&& make $mkopt \
&& make install
