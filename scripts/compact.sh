#!/bin/bash

# cleanup apt
sudo apt-get -y remove linux-headers-$(uname -r) build-essential
sudo apt-get -y autoremove
sudo apt-get -y clean

# zero out the free space to save space
sudo dd if=/dev/zero of=/empty bs=1M
sudo rm -f /empty
