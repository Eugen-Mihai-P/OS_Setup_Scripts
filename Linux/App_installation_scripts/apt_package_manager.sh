#!/bin/bash

sudo apt-get -y update && upgrade

sudo apt-get -y install libvirt-daemon

sudo systemctl enable libvirtd
sudo systemctl start libvirtd

sudo apt install -y qemu-kvm && sudo apt install -y virt-manager
