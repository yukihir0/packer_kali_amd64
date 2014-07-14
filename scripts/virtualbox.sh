#!/bin/bash

# Installing the virtualbox guest additions
sudo apt-get -y install dkms
sudo mount -o loop /home/vagrant/VBoxGuestAdditions.iso /mnt
sudo sh /mnt/VBoxLinuxAdditions.run
sudo umount /mnt
sudo /etc/init.d/vboxadd setup
