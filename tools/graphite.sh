#!/bin/bash
source ./env.sh

url="https://github.com/silnrsi/graphite/releases/download/1.3.14/graphite2-1.3.14.tgz"

zux-get \
&& sed -i '/cmptest/d' tests/CMakeLists.txt \
&& mkdir build \
&& cd build \
&& cmake -DCMAKE_INSTALL_PREFIX=/usr .. \
&& make $mkopt \
&& make docs \
&& make install
