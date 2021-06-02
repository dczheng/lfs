#!/bin/bash
source ./env.sh
pkg_url="http://ftp.vim.org/pub/vim/unix/vim-8.2.tar.bz2"
zux-get \
&& ./configure --prefix=/usr \
&& make $mkopt \
&& make install \
&& ln -sfv vim /usr/bin/vi
