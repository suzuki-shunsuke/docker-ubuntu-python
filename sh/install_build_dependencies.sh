#!/bin/bash

# Copyright (c) 2014-2015 Docker, Inc.
# Released under the MIT license
# http://opensource.org/licenses/mit-license.php

source prepare_trap_error.sh

BUILD_DEPS=$@

apt-get update
apt-get install -y ${BUILD_DEPS[@]} --no-install-recommends
