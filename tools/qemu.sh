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

cat > /lib/udev/rules.d/65-kvm.rules << "EOF"
KERNEL=="kvm", GROUP="kvm", MODE="0660"
EOF

chgrp kvm  /usr/libexec/qemu-bridge-helper &&
chmod 4750 /usr/libexec/qemu-bridge-helper
