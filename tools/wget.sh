#!/bin/bash
source ./env.sh
url="ttps://ftp.gnu.org/gnu/wget/wget-1.21.1.tar.gz"

zux-get \
&& ./configure --prefix=/usr --sysconfdir=/etc --with-ssl=openssl\
&& make $mkopt  \
&& make install

cd $zdir
