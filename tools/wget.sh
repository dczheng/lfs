#!/bin/bash
source ./env.sh
pkg_url="https://ftp.gnu.org/gnu/wget/wget-1.21.1.tar.gz"

zux-get \
&& ./configure --prefix=/usr --sysconfdir=/etc --with-ssl=openssl\
&& make $mkopt  \
&& make install

cd $tools_dir
