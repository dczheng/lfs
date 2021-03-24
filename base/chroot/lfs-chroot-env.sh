#!/bin/bash

#touch /var/log/{btmp,lastlog,faillog,wtmp}
#chgrp -v utmp /var/log/lastlog
#chmod -v 664  /var/log/lastlog
#chmod -v 600  /var/log/btmp

export LFS="/"
echo "LFS: "$LFS

export LFS_TOOLS=${LFS}lfs-10.0-tools/base/chroot
echo "LFS_TOOLS: "$LFS_TOOLS

export BUILD_ROOT_DIR=$LFS_TOOLS/build
echo "LFS_TOOLS_DIR: "$BUILD_ROOT_DIR

export LFS_PKGS=${LFS}lfs-10.0-tools/base/sources
echo "LFS_PKGS: "$LFS_PKGS

export LFS_SOFTWARE_BUILD_DIR=${BUILD_ROOT_DIR}/software
echo "LFS_SOFTWARE_BUILD_DIR: "$LFS_SOFTWARE_BUILD_DIR

export LFS_ADDITIONAL_TOOLS_BUILD_DIR=${BUILD_ROOT_DIR}additional-tools
echo "LFS_ADDITIONAL_TOOLS_BUILD_DIR: "$LFS_ADDITIONAL_TOOLS_BUILD_DIR

export MKOPT="-j4"
alias ls="ls --color"
alias ll="ls -l"
alias df="df -h"
