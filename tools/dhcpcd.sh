#!/bin/bash
source ./env.sh
pkg_url="https://roy.marples.name/downloads/dhcpcd/dhcpcd-9.1.4.tar.xz"
zux-get \
&& install  -v -m700 -d /var/lib/dhcpcd \
&& groupadd -g 52 dhcpcd        \
&& useradd  -c 'dhcpcd PrivSep' \
         -d /var/lib/dhcpcd  \
         -g dhcpcd           \
         -s /bin/false     \
         -u 52 dhcpcd \
&& chown    -v dhcpcd:dhcpcd /var/lib/dhcpcd \
&& ./configure --libexecdir=/lib/dhcpcd \
            --dbuild_dir=/var/lib/dhcpcd  \
            --privsepuser=dhcpcd     \
&& make $mkopt \
&& make install

