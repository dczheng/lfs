#!/bin/bash
source ./env.sh
url="https://github.com/tmux/tmux/releases/download/3.1/tmux-3.1.tar.gz"

zux-get \
&& ./configure --prefix=/usr\
&& make $mkopt\
&& make install

cd $zdir

