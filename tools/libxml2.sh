#!/bin/bash
source ./env.sh
pkg_url="http://xmlsoft.org/sources/libxml2-2.9.10.tar.gz"

zux-get \
&& ./configure --prefix=/usr --disable-static --with-history --with-python=/usr/bin/python3 \
&& make $mkopt \
&& make install

cd $tools_dir
