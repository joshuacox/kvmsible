#!/bin/bash

TMP=$(mktemp -d --suffix=PACKERTMP)
export PACKER_VERSION=0.11.0
export PACKER_URL="https://releases.hashicorp.com/packer/$PACKER_VERSION/packer_$(echo -n $PACKER_VERSION)_linux_amd64.zip"
export PACKER_ZIP="packer_$(echo -n $PACKER_VERSION)_linux_amd64.zip"
echo $PACKER_URL
echo $PACKER_ZIP

# Download and unpack Packer
cd $TMP
wget -c $PACKER_URL
cd /usr/local/bin
unzip -o "$TMP/$PACKER_ZIP"
rm -Rf $TMP
