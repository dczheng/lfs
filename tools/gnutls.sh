#!/bin/bash
source ./env.sh
pkg_url="https://www.gnupg.org/ftp/gcrypt/gnutls/v3.7/gnutls-3.7.0.tar.xz"
zux-get \
&& ./configure --prefix=/usr \
            --docdir=/usr/share/doc/gnutls-3.7.0 \
            --disable-guile \
            --with-included-unistring \
            --with-default-trust-store-pkcs11="pkcs11:" \
&& make $mkopt \
&& make install
