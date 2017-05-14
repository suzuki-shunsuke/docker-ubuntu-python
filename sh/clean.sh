#!/bin/bash

# Copyright (c) 2014-2015 Docker, Inc.
# Released under the MIT license
# http://opensource.org/licenses/mit-license.php

source prepare_trap_error.sh

BUILD_DEPS=$@

apt-get purge -y --auto-remove ${BUILD_DEPS[@]}
find /usr/local -depth \
    \( \
	\( -type d -a -name test -o -name tests \) \
	-o \
	\( -type f -a -name '*.pyc' -o -name '*.pyo' \) \
    \) -exec rm -rf '{}' +; \
rm -rf /usr/src/python
rm -rf /var/lib/apt/lists/*
rm -rf /tmp/sh
