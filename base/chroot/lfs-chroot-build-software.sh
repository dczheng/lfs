#!/bin/bash

#Building tools in chapter 8 of LFS-10.1 book.
source ./lfs-chroot-env.sh

BUILD_DIR=$LFS_SOFTWARE_BUILD_DIR
export EXIT_FLAG=""
create-dir $BUILD_DIR
run-build $LFS_TOOLS/software/man-pages
run-build $LFS_TOOLS/software/tcl
run-build $LFS_TOOLS/software/expect
run-build $LFS_TOOLS/software/dejagnu
run-build $LFS_TOOLS/software/iana-etc
run-build $LFS_TOOLS/software/glibc
run-build $LFS_TOOLS/software/glibc-conf
run-build $LFS_TOOLS/software/zlib
run-build $LFS_TOOLS/software/bzip2
run-build $LFS_TOOLS/software/xz
run-build $LFS_TOOLS/software/zstd
run-build $LFS_TOOLS/software/file
run-build $LFS_TOOLS/software/readline
run-build $LFS_TOOLS/software/m4
run-build $LFS_TOOLS/software/bc
run-build $LFS_TOOLS/software/flex
run-build $LFS_TOOLS/software/binutils
run-build $LFS_TOOLS/software/gmp
run-build $LFS_TOOLS/software/mpfr
run-build $LFS_TOOLS/software/mpc
run-build $LFS_TOOLS/software/attr
run-build $LFS_TOOLS/software/acl
run-build $LFS_TOOLS/software/libcap
run-build $LFS_TOOLS/software/shadow
run-build $LFS_TOOLS/software/gcc
run-build $LFS_TOOLS/software/pkg-config
run-build $LFS_TOOLS/software/ncurses
run-build $LFS_TOOLS/software/sed 
run-build $LFS_TOOLS/software/psmisc
run-build $LFS_TOOLS/software/gettext
run-build $LFS_TOOLS/software/bison
run-build $LFS_TOOLS/software/grep
run-build $LFS_TOOLS/software/bash
run-build $LFS_TOOLS/software/libtool
run-build $LFS_TOOLS/software/gdbm
run-build $LFS_TOOLS/software/gperf
run-build $LFS_TOOLS/software/expat
run-build $LFS_TOOLS/software/inetutils
run-build $LFS_TOOLS/software/perl
run-build $LFS_TOOLS/software/xml-parser
run-build $LFS_TOOLS/software/intltool
run-build $LFS_TOOLS/software/autoconf
run-build $LFS_TOOLS/software/automake
run-build $LFS_TOOLS/software/kmod
run-build $LFS_TOOLS/software/elfutils
run-build $LFS_TOOLS/software/libffi
run-build $LFS_TOOLS/software/openssl
run-build $LFS_TOOLS/software/Python
run-build $LFS_TOOLS/software/ninja
run-build $LFS_TOOLS/software/meson
run-build $LFS_TOOLS/software/coreutils 
run-build $LFS_TOOLS/software/check
run-build $LFS_TOOLS/software/diffutils
run-build $LFS_TOOLS/software/gawk
run-build $LFS_TOOLS/software/findutils
run-build $LFS_TOOLS/software/groff
run-build $LFS_TOOLS/software/grub
run-build $LFS_TOOLS/software/less
run-build $LFS_TOOLS/software/gzip
run-build $LFS_TOOLS/software/iproute2
run-build $LFS_TOOLS/software/kbd
run-build $LFS_TOOLS/software/libpipline
run-build $LFS_TOOLS/software/make
run-build $LFS_TOOLS/software/patch
run-build $LFS_TOOLS/software/man-db
run-build $LFS_TOOLS/software/tar
run-build $LFS_TOOLS/software/texinfo
run-build $LFS_TOOLS/software/vim
run-build $LFS_TOOLS/software/eudev
run-build $LFS_TOOLS/software/procps-ng
run-build $LFS_TOOLS/software/util-linux
run-build $LFS_TOOLS/software/e2fsprogs
run-build $LFS_TOOLS/software/sysklogd
run-build $LFS_TOOLS/software/sysvinit

rm -rf /tmp/*
rm -f /usr/lib/lib{bfd,opcodes}.a
rm -f /usr/lib/libctf{,-nobfd}.a
rm -f /usr/lib/libbz2.a
rm -f /usr/lib/lib{com_err,e2p,ext2fs,ss}.a
rm -f /usr/lib/libltdl.a
rm -f /usr/lib/libfl.a
rm -f /usr/lib/libz.a
find /usr/lib /usr/libexec -name \*.la -delete
find /usr -depth -name $(uname -m)-lfs-linux-gnu\* | xargs rm -rf
