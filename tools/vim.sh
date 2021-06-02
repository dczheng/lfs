#!/bin/bash
source ./env.sh
pkg_url="http://anduin.linuxfromscratch.org/LFS/vim-8.2.1361.tar.gz"
zux-get \
&& echo '#define SYS_VIMRC_FILE "/etc/vimrc"' >> src/feature.h \
&& ./configure --prefix=/usr \
&& make $mkopt \
&& make install \
&& ln -sfv vim /usr/bin/vi \
&& for L in  /usr/share/man/{,*/}man1/vim.1; do
        ln -sfv vim.1 $(dirname $L)/vi.1
done \
&& ln -sfv ../vim/vim82/doc /usr/share/doc/vim-8.2.1361
