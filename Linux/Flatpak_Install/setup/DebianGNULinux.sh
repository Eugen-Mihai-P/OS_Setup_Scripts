#!/bin/bash

sudo apt-get install flatpak -y

wdir=$PWD

current_DE=$(head -n 1 $wdir/DE.txt)


if [[ "$current_DE" = "gnome" ]]; then
	sudo apt install -y gnome-software-plugin-flatpak
fi

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
