#!/bin/bash
source ./env.sh
pkg_url="https://www.alsa-project.org/files/pub/lib/alsa-lib-1.2.4.tar.bz2"

zux-get \
&& ./configure --prefix=/usr \
&& make $mkopt  \
&& make install
