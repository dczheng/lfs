#!/bin/bash
source ./env.sh
pkg_url="https://downloads.sourceforge.net/infozip/unzip60.tar.gz"

zux-get \
&& make -f unix/Makefile generic \
&& make prefix=/usr -f unix/Makefile install
