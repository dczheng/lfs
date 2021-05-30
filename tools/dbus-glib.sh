#!/bin/bash
source ./env.sh
pkg_url="https://dbus.freedesktop.org/releases/dbus-glib/dbus-glib-0.110.tar.gz"
zux-get \
&& ./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --disable-static \
&& make $mkopt  \
&& make install
