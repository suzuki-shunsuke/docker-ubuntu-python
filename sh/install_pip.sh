#!/bin/bash

# Copyright (c) 2014-2015 Docker, Inc.
# Released under the MIT license
# http://opensource.org/licenses/mit-license.php

source prepare_trap_error.sh

set -ex

apt-get update
apt-get install -y --no-install-recommends wget
wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'
python get-pip.py \
    --disable-pip-version-check \
    --no-cache-dir \
    "pip==$PYTHON_PIP_VERSION"
pip --version
rm -f get-pip.py
