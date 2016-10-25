#!/bin/bash
TMP=$(mktemp -d --suffix=PACKERTMP))
export PACKER_VERSION=0.11.0
export PACKER_URL=https://releases.hashicorp.com/packer/0.11.0/packer_0.11.0_linux_amd64.zip
export PACKER_ZIP=packer_0.11.0_linux_amd64.zip
#wget -c https://dl.bintray.com/mitchellh/packer/packer_0.8.6_linux_amd64.zip >/dev/null 2>&1; echo 0
cd $TMP
wget -c $PACKER_URL
cd /usr/local/bin
unzip -o "$TMP/$PACKER_ZIP"
rm -Rf $TMP
