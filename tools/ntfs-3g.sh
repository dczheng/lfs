#!/bin/bash
source ./env.sh
pkg_url="https://tuxera.com/opensource/ntfs-3g_ntfsprogs-2017.3.23.tgz"
zux-get \
&& ./configure --prefix=/usr        \
            --disable-static     \
            --with-fuse=internal \
            --docdir=/usr/share/doc/ntfs-3g-2017.3.23 \
&& make $mkopt \
&& make install \
&& ln -sv ../bin/ntfs-3g /sbin/mount.ntfs  \
&& ln -sv ntfs-3g.8 /usr/share/man/man8/mount.ntfs.8 \
&& chmod -v 4755 /bin/ntfs-3g

