#!/bin/bash

source ./lfs-env.sh


#Building tools in chapter 5 of LFS-10.1 book.
export BUILD_DIR=$LFS_CROSS_TOOLCHAIN_BUILD_DIR
create-dir $BUILD_DIR
export EXIT_FLAG=""
run-build $LFS_TOOLS/toolchain/binutils
run-build $LFS_TOOLS/toolchain/gcc
run-build $LFS_TOOLS/toolchain/linux-api-header
run-build $LFS_TOOLS/toolchain/glibc
run-build $LFS_TOOLS/toolchain/libstdc++

#Building tools in chapter 6 of LFS-10.1 book.
BUILD_DIR=$LFS_TEMPORARY_TOOLS_BUILD_DIR
create-dir $BUILD_DIR
run-build $LFS_TOOLS/temporary-tools/m4
run-build $LFS_TOOLS/temporary-tools/ncurses
run-build $LFS_TOOLS/temporary-tools/bash
run-build $LFS_TOOLS/temporary-tools/coreutils
run-build $LFS_TOOLS/temporary-tools/diffutils
run-build $LFS_TOOLS/temporary-tools/file
run-build $LFS_TOOLS/temporary-tools/findutils
run-build $LFS_TOOLS/temporary-tools/gawk
run-build $LFS_TOOLS/temporary-tools/grep
run-build $LFS_TOOLS/temporary-tools/gzip
run-build $LFS_TOOLS/temporary-tools/make
run-build $LFS_TOOLS/temporary-tools/patch
run-build $LFS_TOOLS/temporary-tools/sed
run-build $LFS_TOOLS/temporary-tools/tar
run-build $LFS_TOOLS/temporary-tools/xz
run-build $LFS_TOOLS/temporary-tools/binutils
run-build $LFS_TOOLS/temporary-tools/gcc
