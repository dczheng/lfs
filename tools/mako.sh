#!/bin/bash
source ./env.sh
url="https://files.pythonhosted.org/packages/source/M/Mako/Mako-1.1.3.tar.gz"

zux-get \
&& python3 setup.py install --optimize=1
