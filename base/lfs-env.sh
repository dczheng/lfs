#!/bin/bash

set +h
umask 022

unset C_INCLUDE_PATH
unset LIBRARY_PATH
unset LD_LIBRARY_PATH
unset CC
unset CXX

export LFS=/home/dczheng/work/os/LFS
echo "LFS: "$LFS

export LFS_TOOLS=$LFS/lfs-10.0-tools/base
echo "LFS_TOOLS: "$LFS_TOOLS

export LFS_PKGS=$LFS_TOOLS/sources
echo "LFS_PKGS: "$LFS_PKGS

export BUILD_ROOT_DIR=$LFS_TOOLS/build
echo "BUILD_ROOT_DIR: "$BUILD_ROOT_DIR

export LFS_CROSS_TOOLCHAIN_BUILD_DIR=$BUILD_ROOT_DIR/cross-toolchain
echo "LFS_CROSS_TOOLCHAIN_BUILD_DIR: "$LFS_CROSS_TOOLCHAIN_BUILD_DIR

export LFS_CROSS_COMPILLING_TOOLS_BUILD_DIR=$BUILD_ROOT_DIR/cross-compilling-tools
echo "LFS_CROSS_COMPILLING_TOOLS_BUILD_DIR: "$LFS_CROSS_COMPILLING_TOOLS_BUILD_DIR
source $LFS_TOOLS/build-tools.sh

PS1="lfs@\W -> "

export LC_ALL=POSIX
export LFS_TGT=$(uname -m)-lfs-linux-gnu
export PATH=$LFS/tools/bin:/usr/bin:/bin:$LFS_TOOLS:$PATH
export MKOPT="-j4"

alias ls="ls --color"
alias ll="ls -l"
alias df="df -h"

source ./build-tools.sh
