#!/bin/bash
source ./env.sh
pkg_url="http://xmlsoft.org/sources/libxslt-1.1.34.tar.gz"

zux-get \
&& sed -i s/3000/5000/ libxslt/transform.c doc/xsltproc.{1,xml} \
&& ./configure --prefix=/usr --disable-static --without-python  \
&& make $mkopt \
&& make install
