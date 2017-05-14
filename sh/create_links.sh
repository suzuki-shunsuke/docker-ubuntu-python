#!/bin/bash

# Copyright (c) 2014-2015 Docker, Inc.
# Released under the MIT license
# http://opensource.org/licenses/mit-license.php

source prepare_trap_error.sh

# make some useful symlinks that are expected to exist
cd /usr/local/bin
ln -s idle3 idle
ln -s pydoc3 pydoc
ln -s python3 python
ln -s python3-config python-config
