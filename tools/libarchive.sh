#!/bin/bash
source ./env.sh

url="https://github.com/libarchive/libarchive/releases/download/v3.4.3/libarchive-3.4.3.tar.xz"
wget http://www.linuxfromscratch.org/patches/blfs/10.0/libarchive-3.4.3-testsuite_fix-1.patch -P $pdir

zux-get \
&& patch -Np1 -i $pdir/libarchive-3.4.3-testsuite_fix-1.patch \
&& ./configure --prefix=/usr --disable-static \
&& make $mkopt \
&& make install
