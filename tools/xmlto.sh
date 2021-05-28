#!/bin/bash
source ./env.sh
url="https://releases.pagure.org/xmlto/xmlto-0.0.28.tar.bz2"

zux-get \
&& LINKS="/usr/bin/links" \
&& ./configure --prefix=/usr \
&& make $mkopt \
&& make install
