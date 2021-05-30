#!/bin/bash
source ./env.sh
pkg_url="http://archive.mozilla.org/pub/security/nss/releases/NSS_3_61_RTM/src/nss-3.61.tar.gz"
pat_url="http://www.linuxfromscratch.org/patches/blfs/10.1/nss-3.61-standalone-1.patch"

zux-get \
&& patch -Np1 -i $pat \
&& cd nss \
&& make -j1 BUILD_OPT=1                  \
  NSPR_INCLUDE_DIR=/usr/include/nspr  \
  USE_SYSTEM_ZLIB=1                   \
  ZLIB_LIBS=-lz                       \
  NSS_ENABLE_WERROR=0                 \
  $([ $(uname -m) = x86_64 ] && echo USE_64=1) \
  $([ -f /usr/include/sqlite3.h ] && echo NSS_USE_SYSTEM_SQLITE=1) \
&& cd ../dist                                                        \
&& install -v -m755 Linux*/lib/*.so              /usr/lib              \
&& install -v -m644 Linux*/lib/{*.chk,libcrmf.a} /usr/lib              \
&& install -v -m755 -d                           /usr/include/nss      \
&& cp -v -RL {public,private}/nss/*              /usr/include/nss      \
&& chmod -v 644                                  /usr/include/nss/*    \
&& install -v -m755 Linux*/bin/{certutil,nss-config,pk12util} /usr/bin \
&& install -v -m644 Linux*/lib/pkgconfig/nss.pc  /usr/lib/pkgconfig
