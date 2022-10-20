#!/bin/bash

desktop=$(echo "$XDG_DATA_DIRS" | sed 's/.*\(xfce\|kde\|gnome\).*/\1/')
desktop=${desktop,,}  # convert to lower case

echo "$desktop" > aux_files/DE.txt
