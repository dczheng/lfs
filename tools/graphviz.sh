#!/bin/bash
source ./env.sh
pkg_url="https://www2.graphviz.org/Packages/stable/portable_source/graphviz-2.44.1.tar.gz"

zux-get \
&& sed -i '/LIBPOSTFIX="64"/s/64//' configure.ac \
&& autoreconf \
&& ./configure --prefix=/usr  --disable-php PS2PDF=true \
&& make $mkopt \
&& make install \
&& ln -svf /usr/share/graphviz/doc /usr/share/doc/graphivz-2.44.1
