#!/bin/bash

sudo apt install -y flatpak

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install flathub org.gtk.Gtk3theme.deepin
flatpak install flathub org.gtk.Gtk3theme.deepin-dark
