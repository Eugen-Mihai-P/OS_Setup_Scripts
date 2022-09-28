# variables
wdir=$PWD
arch=$(uname -m)
kernel=$(uname -r)


if [ -n "$(command -v lsb_release)" ]; then
	distroname=$(lsb_release -si)
elif [ -f "/etc/os-release" ]; then
	distroname=$(grep ^ID /etc/os-release | sed 's/ID=//g' | tr -d '="')
else
	distroname="$(uname -s) $(uname -r)"
fi


echo "${distroname}" > distro_name.txt
