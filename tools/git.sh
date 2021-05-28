#!/bin/bash
source ./env.sh
url="https://www.kernel.org/pub/software/scm/git/git-2.30.1.tar.xz"

zux-get \
&& ./configure --prefix=/usr \
            --with-gitconfig=/etc/gitconfig \
            --with-python=python3 \
&& make $mkopt \
&& make install
