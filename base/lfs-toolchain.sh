#!/bin/bash

source ./lfs-env.sh


#Building tools in chapter 5 of LFS-10.1 book.
create-dir $LFS_CROSS_TOOLCHAIN_BUILD_DIR
export BUILD_DIR=$LFS_CROSS_TOOLCHAIN_BUILD_DIR
echo "TEST"$LFS_CROSS_TOOLCHAIN_BUILD_DIR
export EXIT_FLAG=""
run-build $LFS_TOOLS/cross-toolchain/binutils
run-build $LFS_TOOLS/cross-toolchain/gcc
run-build $LFS_TOOLS/cross-toolchain/linux-api-header
run-build $LFS_TOOLS/cross-toolchain/glibc
run-build $LFS_TOOLS/cross-toolchain/libstdc++

#Building tools in chapter 6 of LFS-10.1 book.
create-dir $LFS_CROSS_COMPILLING_BUILD_DIR
BUILD_DIR=$LFS_CROSS_COMPILLING_BUILD_DIR
export EXIT_FLAG=""
run-build $LFS_TOOLS/cross-compilling-tools/m4
run-build $LFS_TOOLS/cross-compilling-tools/ncurses
run-build $LFS_TOOLS/cross-compilling-tools/bash
run-build $LFS_TOOLS/cross-compilling-tools/coreutils
run-build $LFS_TOOLS/cross-compilling-tools/diffutils
run-build $LFS_TOOLS/cross-compilling-tools/file
run-build $LFS_TOOLS/cross-compilling-tools/findutils
run-build $LFS_TOOLS/cross-compilling-tools/gawk
run-build $LFS_TOOLS/cross-compilling-tools/grep
run-build $LFS_TOOLS/cross-compilling-tools/gzip
run-build $LFS_TOOLS/cross-compilling-tools/make
run-build $LFS_TOOLS/cross-compilling-tools/patch
run-build $LFS_TOOLS/cross-compilling-tools/sed
run-build $LFS_TOOLS/cross-compilling-tools/tar
run-build $LFS_TOOLS/cross-compilling-tools/xz
run-build $LFS_TOOLS/cross-compilling-tools/binutils
run-build $LFS_TOOLS/cross-compilling-tools/gcc
