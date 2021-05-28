#!/bin/bash
source ./env.sh
url="http://feh.finalrewind.org/feh-3.6.3.tar.bz2"
zux-get \
&& sed -i "s:doc/feh:&-3.6.3:" config.mk \
&& make PREFIX=/usr \
&& make PREFIX=/usr install
