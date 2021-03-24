#!/bin/bash

#Build tools in chapter 7 of LFS-10.1 book.
source ./lfs-chroot-env.sh
export BUILD_DIR=$LFS_ADDITIONAL_TOOLS_BUILD_DIR
create-dir $BUILD_DIR
export EXIT_FLAG=""
run-build $LFS_TOOLS/additional-tools/libstdc++
run-build $LFS_TOOLS/additional-tools/gettext
run-build $LFS_TOOLS/additional-tools/bison
run-build $LFS_TOOLS/additional-tools/perl
run-build $LFS_TOOLS/additional-tools/python
run-build $LFS_TOOLS/additional-tools/texinfo
run-build $LFS_TOOLS/additional-tools/util-linux

lfs-clean-after-build2
find /usr/{lib,libexec} -name \*.la -delete
rm -rf /usr/share/{info,man,doc}/*

