#!/bin/bash
source ./env.sh
pkg_url="https://github.com/AlDanial/cloc/releases/download/1.88/cloc-1.88.tar.gz"
zux-get \
&& cp cloc /bin
