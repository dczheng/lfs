#!/bin/bash
source ./env.sh

url="https://ftp.gnu.org/gnu/which/which-2.21.tar.gz"

zux-get \
&& ./configure --prefix=/usr \
&& make $mkopt \
&& make install
