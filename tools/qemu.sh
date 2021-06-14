#!/bin/bash
source ./env.sh
pkg_url="http://download.qemu-project.org/qemu-5.2.0.tar.xz"
zux-get \
&& mkdir -vp build \
&& cd        build \
&& ../configure --prefix=/usr               \
             --sysconfdir=/etc           \
             --target-list=x86_64-softmmu   \
             --audio-drv-list=alsa       \
             --docdir=/usr/share/doc/qemu-5.2.0 \
&& make $mkopt \
&& make install
