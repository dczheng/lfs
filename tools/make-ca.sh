#!/bin/bash
source ./env.sh
pkg_url="https://github.com/djlucas/make-ca/releases/download/v1.7/make-ca-1.7.tar.xz"
zux-get \
&& make install \
&& install -vdm755 /etc/ssl/local \
&& /usr/sbin/make-ca -g
