#!/bin/bash

# qemu-kvm installation
sudo apt-get -y update && sudo apt-get -y upgrade

sudo apt-get -y install libvirt-daemon

sudo systemctl enable libvirtd
sudo systemctl start libvirtd

sudo apt install -y qemu-kvm && sudo apt install -y virt-manager

# other apps

