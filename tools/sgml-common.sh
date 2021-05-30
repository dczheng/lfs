#!/bin/bash
source ./env.sh
pkg_url="https://sourceware.org/ftp/docbook-tools/new-trials/SOURCES/sgml-common-0.6.3.tgz"

pat_url="http://www.linuxfromscratch.org/patches/blfs/10.1/sgml-common-0.6.3-manpage-1.patch"

zux-get \
&& patch -Np1 -i $pat \
&& autoreconf -f -i \
&& ./configure --prefix=/usr --sysconfdir=/etc \
&& make $mkopt  \
&& make docdir=/usr/share/doc install \
&& install-catalog --add /etc/sgml/sgml-ent.cat \
    /usr/share/sgml/sgml-iso-entities-8879.1986/catalog \
&& install-catalog --add /etc/sgml/sgml-docbook.cat \
    /etc/sgml/sgml-ent.cat
