#!/bin/bash

zdir="/home/dczheng/work/os/zux/tools"

pdir=$zdir/pkgs
bdir=$zdir/build

url="url"
pkgs=""
sdir=""

mkopt=" -j5 "

cd $zdir
mkdir -p $bdir $pdir

zux-get() {

    pkg=$pdir/`basename $url`
    sdir=$bdir/`basename $url`.src

    if [ ! -f $pkg ]; then
        wget $url -O $pkg
        if [ $? -ne 0 ]; then
            rm $pkg
            echo "Failed to get: "$url
            return 1 
        fi
    fi

    rm -rf $sdir
    mkdir $sdir

    err=1
    if [[ $pkg == *tar.gz || $pkg == *tgz || $pkg == *tar || $pkg == *tar.bz2 || $pkg == *tar.xz ]]; then
        tar xvf $pkg -C $sdir --strip-components=1
        err=$?
    fi

    if [[ $pkg == *zip ]]; then
        unzip $pkg  -d $sdir
        err=$?
    fi

    if [ $err -ne 0 ]; then
        echo "Failed to untar: "$pkg
        return 2
    fi

    echo "--- "$url
    echo "--- "$pkg
    echo "--- "$sdir
    cd $sdir

}
