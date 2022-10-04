#!/bin/bash

wdir=$PWD

if [ -f $wdir/rebooted.txt ]; then
	
	# install flatpaks
	bash $wdir/Flatpak_Install/app_install.sh
	
	echo "\n\nSetup complete.\n\n"
	
else
	# make all scripts in current folder and subfolders executable
	chmod -R 755 ./


	# detect distro, desktop environment and package manager
	bash distro_detect.sh
	bash package_manager_detect.sh
	bash DE_detect.sh


	# run app installation script
	package_manager=$(head -n 1 package_manager.txt)

	bash $wdir/App_instalation_scripts/"${package_manager}.sh"


	# run flatpak install script
	bash Flatpak_Install/install.sh
	
	
	# build github software
	bash $wdir/Github_install/install.sh
	

	touch rebooted.txt
	# edit crontab to run script after reboot
	
fi
