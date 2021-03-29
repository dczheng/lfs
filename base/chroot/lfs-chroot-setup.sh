#!/bin/bash

source ./lfs-chroot-env.sh

#System configuration (chapter 9 of LFS-10.1 book).
	SETUP_DIR=${LFS_TOOLS}/setup
	mkdir $SETUP_DIR
	cd $SETUP_DIR
	tar xvf $LFS_PKGS/lfs-bootscripts-20200818.tar.xz
	cd lfs-bootscripts-20200818
	make install
	cd ..
	
	cat > /etc/fstab << "EOF"
# Begin /etc/fstab

# file system  mount-point  type     options             dump  fsck
#                                                              order

/dev/sda5     /            ext4    defaults            1     1
/dev/sda6     /home            ext4    defaults            1     1
/dev/sda2     swap         swap     pri=1               0     0
proc           /proc        proc     nosuid,noexec,nodev 0     0
sysfs          /sys         sysfs    nosuid,noexec,nodev 0     0
devpts         /dev/pts     devpts   gid=5,mode=620      0     0
tmpfs          /run         tmpfs    defaults            0     0
devtmpfs       /dev         devtmpfs mode=0755,nosuid    0     0

# End /etc/fstab
EOF
    cat /etc/fstab
    
 cd /etc/sysconfig/
cat > ifconfig.enp0s25 << "EOF"
ONBOOT=yes
IFACE=enp0s25
SERVICE=ipv4-static
IP=192.168.20.221
GATEWAY=192.168.20.254
PREFIX=24
BROADCAST=192.168.20.255
EOF

cat > /etc/resolv.conf << "EOF"
nameserver 223.5.5.5
EOF
    
    cat > /etc/inittab << "EOF"
# Begin /etc/inittab

id:3:initdefault:

si::sysinit:/etc/rc.d/init.d/rc S

l0:0:wait:/etc/rc.d/init.d/rc 0
l1:S1:wait:/etc/rc.d/init.d/rc 1
l2:2:wait:/etc/rc.d/init.d/rc 2
l3:3:wait:/etc/rc.d/init.d/rc 3
l4:4:wait:/etc/rc.d/init.d/rc 4
l5:5:wait:/etc/rc.d/init.d/rc 5
l6:6:wait:/etc/rc.d/init.d/rc 6

ca:12345:ctrlaltdel:/sbin/shutdown -t1 -a -r now

su:S016:once:/sbin/sulogin

1:2345:respawn:/sbin/agetty --noclear tty1 9600
2:2345:respawn:/sbin/agetty tty2 9600
3:2345:respawn:/sbin/agetty tty3 9600
4:2345:respawn:/sbin/agetty tty4 9600
5:2345:respawn:/sbin/agetty tty5 9600
6:2345:respawn:/sbin/agetty tty6 9600

# End /etc/inittab
EOF

    cat /etc/inittab
    
    cat > /etc/inputrc << "EOF"
# Begin /etc/inputrc
# Modified by Chris Lynn <roryo@roryo.dynup.net>

# Allow the command prompt to wrap to the next line
set horizontal-scroll-mode Off

# Enable 8bit input
set meta-flag On
set input-meta On

# Turns off 8th bit stripping
set convert-meta Off

# Keep the 8th bit for display
set output-meta On

# none, visible or audible
set bell-style none

# All of the following map the escape sequence of the value
# contained in the 1st argument to the readline specific functions
"\eOd": backward-word
"\eOc": forward-word

# for linux console
"\e[1~": beginning-of-line
"\e[4~": end-of-line
"\e[5~": beginning-of-history
"\e[6~": end-of-history
"\e[3~": delete-char
"\e[2~": quoted-insert

# for xterm
"\eOH": beginning-of-line
"\eOF": end-of-line

# for Konsole
"\e[H": beginning-of-line
"\e[F": end-of-line

# End /etc/inputrc
EOF

    cat /etc/inputrc
    
    cat > /etc/shells << "EOF"
# Begin /etc/shells

/bin/sh
/bin/bash

# End /etc/shells
EOF

    cat /etc/shells

    
cat > /etc/hostname << EOF
LFS
EOF
cat /etc/hostname 

cat > /etc/profile << EOF
#Begin /etc/profile
export PS1="\u@\W -> "
alias  ls="ls --color"
alias  ll="ls -l"
#End /etc/profile
EOF
source /etc/profile
cat /etc/profile
