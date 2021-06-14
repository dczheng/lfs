#!/bin/bash
source ./env.sh
pkg_url="https://github.com/p11-glue/p11-kit/releases/download/0.23.22/p11-kit-0.23.22.tar.xz"
zux-get \
&& sed '20,$ d' -i trust/trust-extract-compat &&
cat >> trust/trust-extract-compat << "EOF"
# Copy existing anchor modifications to /etc/ssl/local
/usr/libexec/make-ca/copy-trust-modifications

# Generate a new trust store
/usr/sbin/make-ca -f -g
EOF

./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --with-trust-paths=/etc/pki/anchors \
&& make $mkopt \
&& make install  \
&& ln -sfv /usr/libexec/p11-kit/trust-extract-compat  /usr/bin/update-ca-certificates
