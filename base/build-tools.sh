#!/bin/bash

create-dir() {
    echo "reset "$1" ..."
    if [ -d $1 ]
    then
        rm -rf $1
    fi
    mkdir -p $1
    echo "reset "$1" done."
}

set-error-flag() {
   if [ $1 != 0 ]
   then
       echo "Failed to build $2"
       export EXIT_FLAG="Failed"
   fi
}

run-build() {

    if [ 'x'$EXIT_FLAG != 'x' ]
    then
        return
    fi

    cd $BUILD_DIR
    echo "BUILD_DIR: "$BUILD_DIR
    source $1
    if [ 'x'$2 != 'xskip_error' ]
    then
        set-error-flag $? $1
        #echo "do"
    else
        echo "skip error"
    fi

    cd $BUILD_ROOT_DIR
}
