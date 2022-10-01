#!/bin/bash

sudo apt install -y flatpak

flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
