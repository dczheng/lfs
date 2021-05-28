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
#run-build $LFS_TOOLS/tools/b/unzip
#run-build $LFS_TOOLS/tools/b/git
#run-build $LFS_TOOLS/tools/b/python2
#run-build $LFS_TOOLS/tools/b/libxml2
#run-build $LFS_TOOLS/tools/b/sgml-common
#run-build $LFS_TOOLS/tools/b/docbook-xml
#run-build $LFS_TOOLS/tools/b/docbook-xsl

#run-build $LFS_TOOLS/tools/b/libxslt
#run-build $LFS_TOOLS/tools/b/glib
#run-build $LFS_TOOLS/tools/b/libevent
#run-build $LFS_TOOLS/tools/b/tmux
#run-build $LFS_TOOLS/tools/b/cloc
#run-build $LFS_TOOLS/tools/b/pcre
#run-build $LFS_TOOLS/tools/b/wayland
#run-build $LFS_TOOLS/tools/b/wayland-protocols
#run-build $LFS_TOOLS/tools/b/libxkb-common
#run-build $LFS_TOOLS/tools/b/dbus
#run-build $LFS_TOOLS/tools/b/dbus-glib
#run-build $LFS_TOOLS/tools/b/nasm
#run-build $LFS_TOOLS/tools/b/libjpeg
#run-build $LFS_TOOLS/tools/b/nspr
#run-build $LFS_TOOLS/tools/b/nss
#run-build $LFS_TOOLS/tools/b/alsa-lib
#run-build $LFS_TOOLS/tools/b/krb5
#
#run-build $LFS_TOOLS/tools/b/gobject-introspection
#run-build $LFS_TOOLS/tools/b/graphviz
#run-build $LFS_TOOLS/tools/b/vala
#run-build $LFS_TOOLS/tools/b/libical
#run-build $LFS_TOOLS/tools/b/bluez
#run-build $LFS_TOOLS/tools/b/cpio

#run-build $LFS_TOOLS/tools/b/imlib
#run-build $LFS_TOOLS/tools/b/feh
#run-build $LFS_TOOLS/tools/b/vim

run-build $LFS_TOOLS/tools/b/bridge-utils


#########################################

#run-build $LFS_TOOLS/tools/b/libgpg-error
#run-build $LFS_TOOLS/tools/b/gmime
#run-build $LFS_TOOLS/tools/b/icu
#run-build $LFS_TOOLS/tools/b/c-ares
#run-build $LFS_TOOLS/tools/b/nghttp2
#run-build $LFS_TOOLS/tools/b/node

