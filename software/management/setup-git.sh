#!/bin/bash
#
cd /
logfile='/rts/logs/setup-git.log'
#
./updater.sh 1>> $logfile 2>> $logfile
apt-get -y install git 1>> $logfile 2>> $logfile
#
