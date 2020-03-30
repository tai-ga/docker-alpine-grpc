#!/bin/sh

# Download grpc source
cd /tmp &&  git clone -b $GRPC_VERSION https://github.com/grpc/grpc
cd grpc 
git submodule update --init
make
make install

# Cleanup
cd ~
rm -rf /tmp/grpc

