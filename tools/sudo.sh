#!/bin/bash
source ./env.sh
url="http://www.sudo.ws/dist/sudo-1.9.2.tar.gz"
zux-get \
&& ./configure --prefix=/usr              \
            --libexecdir=/usr/lib      \
            --with-secure-path         \
            --with-all-insults         \
            --with-env-editor          \
            --docdir=/usr/share/doc/sudo-1.9.2 \
            --with-passprompt="[sudo] password for %p: " \
&& make $mkopt \
&& make install \
&& ln -sfv libsudo_util.so.0.0.0 /usr/lib/sudo/libsudo_util.so.0

