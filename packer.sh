#!/bin/bash

TMP=$(mktemp -d --suffix=PACKERTMP)
export PACKER_VERSION=0.11.0
export PACKER_URL=https://releases.hashicorp.com/packer/0.11.0/packer_0.11.0_linux_amd64.zip
export PACKER_ZIP=packer_0.11.0_linux_amd64.zip

# Download and unpack Packer
cd $TMP
wget -c $PACKER_URL
cd /usr/local/bin
unzip -o "$TMP/$PACKER_ZIP"
rm -Rf $TMP
