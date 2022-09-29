declare -a supported_distros=(
[0]="DebianGNULinux"
[1]="Deepin"
[2]="Pardus"

[3]="Ubuntu"
[4]="Kubuntu"
[5]="Pop!_OS"

[6]="rhel"
[7]="Rocky_Linux"

[8]="openSUSE"
[9]="Fedora"

[10]="Solus"

[11]="Mageia"

[12]="Clear"

[13]="Void"

[14]="NixOS"

[15]="Pisi"

[16]="Arch"
[17]="EndeavourOS"
)

wdir=$PWD


# read first line in distro name file
cd ..
current_distro=$(head -n 1 distro_name.txt)
cd $wdir
found=0

# search array for the detected distro
for i in ${!supported_distros[@]}
do
	# for supported distros run appropriate script
	if [ "${supported_distros[$i]}" = "$current_distro" ]; then
		script="$wdir/setup/${current_distro}.sh"
		bash "$script"
		found=1
	fi
done


# if distro isn't supported notify user
if [ $found -eq 1 ]; then
	echo -e "\n\nFlatpack is now installed.\n"
else
	echo -e "\n\nFlatpack not supported. Continuing setup.\n"
fi
