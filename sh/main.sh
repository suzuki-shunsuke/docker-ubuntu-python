#!/bin/bash

set -e

WORK=`dirname $0`
cd $WORK

source prepare_trap_error.sh

BUILD_DEPS=(
  dpkg-dev
  gcc
  libbz2-dev
  libc6-dev
  libgdbm-dev
  liblzma-dev
  libncurses-dev
  libreadline-dev
  libsqlite3-dev
  libssl-dev
  make
  tcl-dev
  tk-dev
  wget
  xz-utils
  zlib1g-dev
)

./install_build_dependencies.sh ${BUILD_DEPS[@]}
./install_runtime_dependencies.sh
./get_and_build_python.sh
./create_links.sh
./install_pip.sh
./clean.sh ${BUILD_DEPS[@]}
