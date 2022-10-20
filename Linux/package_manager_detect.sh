#!/bin/bash

if [ -n "$(command -v pacman)" ]; then
	echo "pacman_package_manager" > aux_files/package_manager.txt
elif [ -n "$(command -v apt-get)" ]; then
	echo "apt_package_manager" > aux_files/package_manager.txt
elif [ -n "$(command -v zypper)" ]; then
	echo "zypper_package_manager" > aux_files/package_manager.txt
elif [ -n "$(command -v dnf)" ]; then
	echo "dnf_package_manager" > aux_files/package_manager.txt
else
	echo "Package manager not configured. Aborting."
fi
