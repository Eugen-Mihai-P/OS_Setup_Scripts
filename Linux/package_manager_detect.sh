#!/bin/bash

if [ -n "$(command -v pacman)" ]; then
	echo "Pacman found"
elif [ -n "$(command -v apt-get)" ]; then
	echo "Apt found"
elif [ -n "$(command -v zypper)" ]; then
	echo "Zypper found"
elif [ -n "$(command -v dnf)" ]; then
	echo "Dnf found"
else
	echo "Package manager not configured. Aborting."
fi
