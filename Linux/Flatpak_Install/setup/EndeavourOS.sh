#!/bin/bash

sudo pacman -Syu
sudo pacman -Sy flatpak

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
