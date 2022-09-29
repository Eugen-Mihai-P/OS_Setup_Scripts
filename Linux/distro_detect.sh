# variables
wdir=$PWD
arch=$(uname -m)
kernel=$(uname -r)

if [ -f /etc/os-release ]; then
	# freedesktop.org and systemd
	. /etc/os-release
	distroname=$NAME
else
	distroname="$(uname -s) $(uname -r)"
fi

echo $distroname | sed 's/ //g' | sed 's/\///g' > distro_name.txt
