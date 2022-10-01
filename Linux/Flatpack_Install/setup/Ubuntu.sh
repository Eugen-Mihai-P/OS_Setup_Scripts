#!/bin/bash

sudo apt install flatpak

#add code for Gnome/KDE extra setup
wdir=$PWD


current_DE=$(head -n 1 $PWD/../../DE.txt)
cd $wdir

if [ $current_DE = "gnome" ]; then
	sudo apt install -y gnome-software-plugin-flatpak
elif [ $current_DE = "kde" ]; then
	sudo apt install -y plasma-discover-backend-flatpak
else
	echo "\nFlatpaks installable from command line.\n"
fi
 

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

