#!/bin/bash
source ./env.sh
pkg_url="https://codeload.github.com/rdesktop/rdesktop/tar.gz/refs/tags/v1.9.0"
zux-get rdesktop-1.9.0.tar.gz \
&& ./bootstrap \
&& ./configure --prefix=/usr --disable-smartcard \
&& make $mkopt \
&& make install
