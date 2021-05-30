#!/bin/bash
source ./env.sh

pkg_url="https://cpkg_url.haxx.se/download/curl-7.71.1.tar.xz"
pat_url="http://www.linuxfromscratch.org/patches/blfs/10.0/curl-7.71.1-security_fixes-1.patch"

zux-get
echo $?
show-env
