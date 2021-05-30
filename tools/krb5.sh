#!/bin/bash
source ./env.sh
pkg_url="https://kerberos.org/dist//krb5/1.19/krb5-1.19.1.tar.gz"

zux-get \
&& cd src \
&& ./configure --prefix=/usr \
&& make $mkopt \
&& make install
