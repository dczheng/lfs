#!/bin/bash
source ./env.sh

pkg_url="https://github.com/libarchive/libarchive/releases/download/v3.4.3/libarchive-3.4.3.tar.xz"
pat_url="http://www.linuxfromscratch.org/patches/blfs/10.0/libarchive-3.4.3-testsuite_fix-1.patch"

zux-get \
&& patch -Np1 -i $pat \
&& ./configure --prefix=/usr --disable-static \
&& make $mkopt \
&& make install
