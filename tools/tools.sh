#!/bin/bash

export LFS_TOOLS="/home/dczheng/work/os/lfs-10.0-tools/"
echo "LFS_TOOLS: "$LFS_TOOLS

export BUILD_ROOT_DIR=$LFS_TOOLS/tools/build
echo "BUILD_ROOT_DIR: "$BUILD_ROOT_DIR

export LFS_PKGS=$LFS_TOOLS/tools/sources
echo "LFS_PKGS: "$LFS_PKGS

source $LFS_TOOLS/base/build-tools.sh

export BUILD_DIR=$BUILD_ROOT_DIR
echo "BUILD_DIR: "$BUILD_DIR


export MKOPT="-j4"
alias ls="ls --color"
alias ll="ls -l"
alias df="df -h"

create-dir $BUILD_DIR
export EXIT_FLAG=""
#run-build $LFS_TOOLS/tools/b/tree
#run-build $LFS_TOOLS/tools/b/libuv
#run-build $LFS_TOOLS/tools/b/libarchive
#run-build $LFS_TOOLS/tools/b/curl
#run-build $LFS_TOOLS/tools/b/cmake
#run-build $LFS_TOOLS/tools/b/sudo
#run-build $LFS_TOOLS/tools/b/ntfs-3g
#run-build $LFS_TOOLS/tools/b/openssh
#run-build $LFS_TOOLS/tools/b/which
#run-build $LFS_TOOLS/tools/b/pciutils
#run-build $LFS_TOOLS/tools/b/libnl
#run-build $LFS_TOOLS/tools/b/wpa_supplicant
#run-build $LFS_TOOLS/tools/b/dhcpcd
#run-build $LFS_TOOLS/tools/b/fish
#run-build $LFS_TOOLS/tools/b/wget
#run-build $LFS_TOOLS/tools/b/zip
run-build $LFS_TOOLS/tools/b/unzip
