#!/bin/bash

sudo eopkg install -y flatpak xdg-desktop-portal-gtk

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
