#!/bin/bash

sudo apt-get install flatpak

wdir=$PWD

current_DE=$(head -n 1 $PWD/../../DE.txt)
cd $wdir

if [ $current_DE = "gnome" ]; then
	sudo apt install -y gnome-software-plugin-flatpak
fi

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
