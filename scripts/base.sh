#!/bin/bash

# setup sudo
echo 'vagrant ALL=NOPASSWD:ALL' > vagrant
echo 'vagrant' | sudo -S chmod 440 vagrant
echo 'vagrant' | sudo -S chown root:root vagrant
echo 'vagrant' | sudo -S mv vagrant /etc/sudoers.d/
sudo sed -i -e 's/%sudo\tALL=(ALL:ALL) ALL/%sudo\tALL=(ALL:ALL) NOPASSWD:ALL/' /etc/sudoers

# update
sudo apt-get -y update
#sudo apt-get -y upgrade
sudo apt-get -y install linux-headers-$(uname -r) build-essential
sudo apt-get -y install zlib1g-dev libssl-dev libreadline-gplv2-dev wget libyaml-dev curl unzip vim
