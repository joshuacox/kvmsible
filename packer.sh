#!/bin/bash
echo hello
#wget -c https://dl.bintray.com/mitchellh/packer/packer_0.8.6_linux_amd64.zip >/dev/null 2>&1; echo 0
cd /tmp
wget -c https://dl.bintray.com/mitchellh/packer/packer_0.8.6_linux_amd64.zip 
cd /usr/local/bin
unzip -o /tmp/packer_0.8.6_linux_amd64.zip
