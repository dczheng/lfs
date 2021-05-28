#!/bin/bash
source ./env.sh
url="https://files.pythonhosted.org/packages/source/M/MarkupSafe/MarkupSafe-1.1.1.tar.gz"
zux-get \
&& python3 setup.py build \
&& python3 setup.py install --optimize=1
