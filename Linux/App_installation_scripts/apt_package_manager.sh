#!/bin/bash

# qemu-kvm installation
sudo apt-get update -y && sudo apt-get upgrade -y

sudo apt-get install -y libvirt-daemon

sudo systemctl enable libvirtd
sudo systemctl start libvirtd

sudo apt install -y qemu-kvm && sudo apt install -y virt-manager

# other apps
current_DE=$(head -n 1 $wdir/aux_files/DE.txt)

if("$current_DE" = "gnome")
	sudo apt install -y gnome-multi-writer
fi
