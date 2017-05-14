#!/bin/bash

# Copyright (c) 2014-2015 Docker, Inc.
# Released under the MIT license
# http://opensource.org/licenses/mit-license.php

source prepare_trap_error.sh

apt-get update

RUNTIME_DEPS=(
    ca-certificates
    libgdbm3
    libsqlite3-0
    libssl1.0.0
)

apt-get install -y --no-install-recommends ${RUNTIME_DEPS[@]}
