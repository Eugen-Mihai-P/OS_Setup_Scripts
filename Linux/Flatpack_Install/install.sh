declare -a supported_distros=(
[0]=Ubuntu
[1]=Kubuntu
[2]=Fedora
[3]=openSUSE
[4]=Arch
[5]=Debian
[6]=Pop!_OS
[7]=Rocky_Linux
[8]=Euro_Linux
[9]=Alma_Linux
[10]=Soulus
[11]=Alpine
[12]=Mageia
[13]=ElementaryOS
[14]=Clear
[15]=Void
[16]=NixOS
[17]=PureOS
[18]=SulinOS
[19]=ZorinOS
[20]=Deepin
[21]=Pardus
[22]=Pisi
[23]=EndeavourOS
)
wdir=$PWD

#read first line in distro name file
cd ..
current_distro=$(head -n 1 distro_name.txt)
cd $wdir


for i in ${supported_distros[@]}
do
	if [ $i = $current_distro ]; then
		echo "Distro supported"
	fi
done
