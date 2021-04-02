#!/bin/bash
source ./build-tools.sh

export XDIR="/home/dczheng/work/os/lfs-10.0-tools/X"
echo "XDIR: "$XDIR

export LFS_PKGS=$XDIR/sources
echo "LFS_PKGS: "$LFS_PKGS

export BUILD_ROOT_DIR=$XDIR/build
echo "BUILD_ROOT_DIR: " $BUILD_ROOT_DIR

export BUILD_DIR=$BUILD_ROOT_DIR
echo "BUILD_DIR: "$BUILD_DIR

export XORG_PREFIX="/usr"
export XORG_CONFIG="--prefix=/usr --sysconfdir=/etc --localstatedir=/var --disable-static"

export MKOPT="-j4"
alias ls="ls --color"
alias ll="ls -l"
alias df="df -h"

    
create-dir $BUILD_DIR
export EXIT_FLAG=""

run-build $XDIR/b/freetype
run-build $XDIR/b/fontconfig
run-build $XDIR/b/libpng
run-build $XDIR/b/util-macros
run-build $XDIR/b/xorgproto
run-build $XDIR/b/libXau
run-build $XDIR/b/libXdmcp
run-build $XDIR/b/xcb-proto
run-build $XDIR/b/libxcb

lib-build

run-build $XDIR/b/xcb-util
run-build $XDIR/b/xcb-util-image
run-build $XDIR/b/xcb-util-keysyms
run-build $XDIR/b/xcb-util-renderutil
run-build $XDIR/b/xcb-util-wm
run-build $XDIR/b/xcb-util-cursor
run-build $XDIR/b/libdrm
run-build $XDIR/b/markupsafe
run-build $XDIR/b/mako
run-build $XDIR/b/mesa
run-build $XDIR/b/xbitmaps

app-build

run-build $XDIR/b/xcursor-themes

font-build

run-build $XDIR/b/xkeyboard-config
run-build $XDIR/b/pixman
run-build $XDIR/b/xorg-server
run-build $XDIR/b/xterm
run-build $XDIR/b/xclock
run-build $XDIR/b/xinit
run-build $XDIR/b/libevdev
run-build $XDIR/b/xf86-input-synaptics
run-build $XDIR/b/xf86-video-intel
run-build $XDIR/b/mtdev
run-build $XDIR/b/xf86-input-evdev
run-build $XDIR/b/libinput

lib-build() {

cd $XDIR/lib
for package in $(grep -v '^#' $XDIR/lib.md5 | awk '{print $2}')
do

  if [ 'x'$EXIT_FLAG != 'x' ]
  then
    cd $XDIR
    return
  fi

  packagedir=${package%.tar.bz2}
  tar -xf $package
  pushd $packagedir
  docdir="--docdir=/usr/share/doc/$packagedir"

  case $packagedir in
    libICE* )
      ./configure $XORG_CONFIG $docdir ICE_LIBS=-lpthread
    ;;

    libXfont2-[0-9]* )
      ./configure $XORG_CONFIG $docdir --disable-devel-docs
    ;;

    libXt-[0-9]* )
      ./configure $XORG_CONFIG $docdir \
                  --with-appdefaultdir=/etc/X11/app-defaults
    ;;

    * )
      ./configure $XORG_CONFIG $docdir
    ;;
  esac \
  && make $MKOPT \
  && make install
  set-error-flag $? $packagedir
  popd

  rm -rf $packagedir
  /sbin/ldconfig

done
cd $XDIR
}

app-build() {
cd $XDIR/app
for package in $(grep -v '^#' $XDIR/app.md5 | awk '{print $2}')
do
  if [ 'x'$EXIT_FLAG != 'x' ]
  then
      cd $XDIR
	  return
  fi

  packagedir=${package%.tar.?z*}
  tar -xf $package
  pushd $packagedir
     case $packagedir in
       luit-[0-9]* )
         sed -i -e "/D_XOPEN/s/5/6/" configure
       ;;
     esac

     ./configure $XORG_CONFIG \
     && make $MKOPT \
     && make install
     set-error-flag $? $packagedir
  popd
  rm -rf $packagedir
done
rm -f /usr/bin/xkeystone
cd $XDIR
echo $EXIT_FLAG
}

font-build() {

cd $XDIR/font
for package in $(grep -v '^#' $XDIR/font.md5 | awk '{print $2}')
do
  if [ 'x'$EXIT_FLAG != 'x' ]
  then
      cd $XDIR
	  return
  fi

  packagedir=${package%.tar.bz2}
  tar -xf $package
  pushd $packagedir
    ./configure $XORG_CONFIG \
    && make $MKOPT \
    && make install
    set-error-flag $? $packagedir
  popd
  rm -rf $packagedir
done

install -v -d -m755 /usr/share/fonts  &&
cd $XDIR

}
