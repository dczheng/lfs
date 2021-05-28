#!/bin/bash
source ./env.sh
url="http://files.itstool.org/itstool/itstool-2.0.6.tar.bz2"

zux-get \
&& PYTHON=/usr/bin/python3 ./configure --prefix=/usr \
&& make $mkopt \
&& make install
