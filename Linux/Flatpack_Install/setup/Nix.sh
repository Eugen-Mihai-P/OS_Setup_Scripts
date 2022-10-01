#!/bin/bash

echo "services.flatpak.enable = true;" >> /etc/nixos/configuration.nix

sudo nixos-rebuild switch
