#!/bin/bash
source ./env.sh
url="https://github.com/libical/libical/releases/download/v3.0.9/libical-3.0.9.tar.gz"
zux-get \
&& mkdir build \
&& cd    build \
&& cmake -DCMAKE_INSTALL_PREFIX=/usr  -DCMAKE_BUILD_TYPE=Release  -DSHARED_ONLY=yes -DICAL_BUILD_DOCS=false         -DGOBJECT_INTROSPECTION=true -DICAL_GLIB_VAPI=true        ..  \
&& make $mkopt \
&& make install


