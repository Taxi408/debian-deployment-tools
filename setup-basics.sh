#!/bin/bash
#
cd /
#
logfiledir=/rts/logs
urldlres=https://github.com/Taxi408/debian-deployment-tools/raw/main
#
mkdir /rts
mkdir /rts/logs
mkdir /rts/backup
mkdir /rts/backup/system
mkdir /rts/backup/system/apt
mkdir /rts/script
mkdir /rts/sysinfo
mkdir /rts/sysconf
mkdir /rts/software
mkdir /rts/security
#
#echo "CURRENT USER: "$USER >> 
#
wget ${urldlres}/software/management/setup-docker.sh
wget ${urldlres}/software/management/setup-traccar.sh
wget ${urldlres}/software/management/setup-plesk.sh
wget ${urldlres}/setup-basics.sh
wget ${urldlres}/software/management/setup-git.sh
wget ${urldlres}/os-tools/updater.sh
wget ${urldlres}/set-file-attributes.sh
#
chmod +x set-file-attributes.sh 1>> $logfiledir/setup-basics.out.sh
bash ./set-file-attributes.sh 1>> $logfiledir/setup-basics.set-file-attributes.out.sh 2>> $logfiledir/setup-basics.set-file-attributes.err.log
#
echo "Installed Software" >> "/rts/sysinfo/installed-software.md"
echo "Basic Server Info" >> "/rts/sysinfo/server-basic.md"
echo "Server-Hostname: "$HOSTNAME >> "/rts/sysinfo/server-basic.md"
echo "Terminal-Emulation: "$TERM >> "/rts/sysinfo/server-basic.md"
echo "Current Shell-Type: "$SHELL >> "/rts/sysinfo/server-basic.md"
echo "Command-Paths-List: "$PATH >> "/rts/sysinfo/server-basic.md"
echo "Current set Editor: "$EDITOR >> "/rts/sysinfo/server-basic.md"

#
bash /rts/script/updater.sh 1>> $logfiledir/setup-basics.updater.run0001.out.log 2>> $logfiledir/setup-basics.updater.run0001.err.log #9>> $logfiledir/setup-basics.updater.run0001.all.log
#
apt-get -y install mc 1>> $logfiledir/setup-mc.out.log 2>> $logfiledir/setup-mc.err.log
apt-get -y install nano 1>> $logfiledir/setup-nano.out.log 2>> $logfiledir/setup-nano.err.log
apt-get -y install apache2 1>> $logfiledir/setup-apache2.out.log 2>> $logfiledir/setup-apache2.err.log
apt-get -y install htop 1>> $logfiledir/setup-htop.out.log 2>> $logfiledir/setup-htop.err.log
apt-get -y install curl 1>> $logfiledir/setup-curl.out.log 2>> $logfiledir/setup-curl.err.log
#apt-get -y install apt-transport-https
#apt-get -y install vsftpd
#apt-get -y install colorized-logs
#apt-get -y install 
#apt-get -y install 
#apt-get -y install 
#apt-get -y install 
#apt-get -y install 
#apt-get -y install 
#apt-get -y install 
#apt-get -y install 
#apt-get -y install 
#apt-get -y install 
#apt-get -y install 
#apt-get -y install 
#apt-get -y install 
#apt-get -y install 
bash /rts/script/updater.sh 1>> $logfiledir/setup-basics.updater.run0002..out.log 2>> $logfiledir/setup-basics.updater.run0002.err.log #9>> $logfiledir/setup-basics.updater.run0002.all.log
#
