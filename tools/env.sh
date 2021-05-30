#!/bin/bash

tools_dir="/home/dczheng/work/os/zux/tools"

package_dir=$tools_dir/pkgs
build_dir=$tools_dir/build

pkg_url="pkg_url"
pat_url="pat_url"

pat=""
pkg=""
src_dir=""

mkopt=" -j5 "

cd $tools_dir
mkdir -p $build_dir $package_dir

show-env() {
    echo "tools_dir: $tools_dir"
    echo "package_dir: $package_dir"
    echo "build_dir: $build_dir"
    echo "pkg_url:  $pkg_url"
    echo "pat_url:  $pat_url"
    echo "pkg:  $pkg"
    echo "pat:  $pat"
    echo "src_dir:  $src_dir"
}

zux-get() {

    pkg=$package_dir/`basename $pkg_url`
    src_dir=$build_dir/`basename $pkg_url`.src
    pat=$package_dir/`basename $pat_url`

    if [ ! -f $pkg ]; then
        wget $pkg_url -O $pkg
        if [ $? -ne 0 ]; then
            rm $pkg
            echo "Failed to get: "$pkg_url
            return 1 
        fi
    fi

    if [ ! -f $pat ] && [ $pat_url != "pat_url" ]; then
        wget $pat_url -O $pat
        if [ $? -ne 0 ]; then
            rm $pat
            echo "Failed to get: "$pkg_url_pat
            return 1 
        fi
    fi

    rm -rf $src_dir
    mkdir $src_dir

    err=1
    if [[ $pkg == *tar.gz || $pkg == *tgz || $pkg == *tar || $pkg == *tar.bz2 || $pkg == *tar.xz ]]; then
        tar xvf $pkg -C $src_dir --strip-components=1
        err=$?
    fi

    if [[ $pkg == *zip ]]; then
        unzip $pkg  -d $src_dir
        err=$?
    fi

    if [ $err -ne 0 ]; then
        echo "Failed to untar: "$pkg
        return 2
    fi

    show-env
    cd $src_dir

}
