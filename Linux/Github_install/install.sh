wdir=$PWD

# auto-cpufreq
git clone https://github.com/AdnanHodzic/auto-cpufreq.git
cd $wdir/Github_install/auto-cpufreq && sudo ./auto-cpufreq-installer
cd $wdir

# wireless driver
git clone https://github.com/tomaspinho/rtl8821ce.git
sudo apt install -y bc module-assistant build-essential dkms
sudo m-a prepare

cd $wdir/rtl8821ce
sudo ./dkms-install.sh
cd $wdir
