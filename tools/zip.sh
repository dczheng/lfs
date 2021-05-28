#!/bin/bash
source ./env.sh
url="https://downloads.sourceforge.net/infozip/zip30.tar.gz"
zux-get \
&& make $mkopt -f unix/Makefile generic_gcc \
&& make prefix=/usr MANDIR=/usr/share/man/man1 -f unix/Makefile install
