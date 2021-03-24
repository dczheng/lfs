#!/bin/bash

source ./lfs-env.sh
create-dir $LFS/bin
create-dir $LFS/etc
create-dir $LFS/lib
create-dir $LFS/lib64
create-dir $LFS/sbin
create-dir $LFS/usr
create-dir $LFS/var
create-dir $LFS/tools
echo "$LFS:"
ls $LFS
