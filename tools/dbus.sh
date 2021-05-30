#!/bin/bash
source ./env.sh
pkg_url="https://dbus.freedesktop.org/releases/dbus/dbus-1.12.20.tar.gz"
zux-get \
&& ./configure --prefix=/usr                        \
            --sysconfdir=/etc                    \
            --localstatedir=/var                 \
            --enable-user-session                \
            --disable-doxygen-docs               \
            --disable-xml-docs                   \
            --disable-static                     \
            --with-systemduserunitdir=no         \
            --with-systemdsystemunitdir=no       \
            --docdir=/usr/share/doc/dbus-1.12.20 \
            --with-console-auth-dir=/run/console \
            --with-system-pid-file=/run/dbus/pid \
            --with-system-socket=/run/dbus/system_bus_socket \
&& make $mkopt  \
&& make install \
&& mv -v /usr/lib/libdbus-1.so.* /lib \
&& ln -sfv ../../lib/$(readlink /usr/lib/libdbus-1.so) /usr/lib/libdbus-1.so
