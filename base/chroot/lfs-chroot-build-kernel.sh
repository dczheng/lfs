#!/bin/bash

#Build kernel (chapter 10 of LFS-10.1 book).
source ./lfs-chroot-env.sh
#tar xvf $LFS_PKGS/linux-5.8.3.tar.xz
cd linux-5.8.3
make mrproper
make menuconfig
make
make modules_install
cp -iv arch/x86_64/boot/bzImage /boot/vmlinuz-5.8.3-lfs-10.0
cp -iv System.map /boot/System.map-5.8.3
install -d /usr/share/doc/linux-5.8.3
cp -r Documentation/* /usr/share/doc/linux-5.8.3

mkdir -pv /etc/modprobe.d
install -v -m755 -d /etc/modprobe.d
cat > /etc/modprobe.d/usb.conf << "EOF"  
#Begin /etc/modprobe.d/usb.conf  
install ohci_hcd /sbin/modprobe ehci_hcd ; /sbin/modprobe -i ohci_hcd ; true
install uhci_hcd /sbin/modprobe ehci_hcd ; /sbin/modprobe -i uhci_hcd ; true
#End /etc/modprobe.d/usb.conf
EOF
