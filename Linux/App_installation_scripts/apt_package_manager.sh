#!/bin/bash

# qemu-kvm installation
sudo apt-get update -y && sudo apt-get upgrade -y

sudo apt-get install libvirt-daemon -y

sudo systemctl enable libvirtd
sudo systemctl start libvirtd

sudo apt install -y qemu-kvm && sudo apt install -y virt-manager

# other apps

