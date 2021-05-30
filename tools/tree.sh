#!/bin/bash
source ./env.sh
pkg_url=http://mama.indstate.edu/users/ice/tree/src/tree-1.8.0.tgz
zux-get \
&& make $mkopt  \
&& make MANDIR=/usr/share/man/man1 install \
&& chmod -v 644 /usr/share/man/man1/tree.1
