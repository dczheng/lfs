#!/bin/bash
source ./env.sh
url="https://www.kernel.org/pub/linux/bluetooth/bluez-5.55.tar.xz"

zux-get \
&& ./configure --prefix=/usr --sysconfdir=/etc --localstatedir=/var --enable-library --disable-systemd \
&& make $mkopt  \
&& make install \
&& ln -svf ../libexec/bluetooth/bluetoothd /usr/sbin \
&& install -v -dm755 /etc/bluetooth \
&& install -v -m644 src/main.conf /etc/bluetooth/main.conf \
&& install -v -dm755 /usr/share/doc/bluez-5.55 \
&& install -v -m644 doc/*.txt /usr/share/doc/bluez-5.55 
