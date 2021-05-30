#!/bin/bash
source ./env.sh
pkg_url="https://www.kernel.org/pub/software/utils/pciutils/pciutils-3.7.0.tar.xz"
zux-get \
&& make PREFIX=/usr                \
     SHAREDIR=/usr/share/hwdata \
     SHARED=yes \
     install install-lib        \
&& chmod -v 755 /usr/lib/libpci.so
