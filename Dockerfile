# Copyright (c) 2014-2015 Docker, Inc.
# Released under the MIT license
# http://opensource.org/licenses/mit-license.php

FROM ubuntu:16.04

ENV PATH=/usr/local/bin:$PATH \
    LANG=C.UTF-8 \
    GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D \
    PYTHON_VERSION=3.6.1 \
    PYTHON_PIP_VERSION=9.0.1

COPY ./sh/* /tmp/sh/
RUN /tmp/sh/main.sh
