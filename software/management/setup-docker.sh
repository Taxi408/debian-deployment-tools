#!/bin/bash
#
cd /
logfile='/rts/logs/setup-docker.log'
#
mkdir /rts/backup/docker
#
curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" >> /etc/apt/sources.list.d/docker.list
#
./os-tools/updater.sh 1>> $logfile 2>> $logfile
#
apt-get -y install docker-ce docker-ce-cli containerd.io docker-compose docker-compose-plugin 1>> $logfile 2>> $logfile
#
docker -version 1>> $logfile 2>> $logfile
#
systemctl status docker 1>> $logfile 2>> $logfile
systemctl enable docker.service 1>> $logfile 2>> $logfile
systemctl enable containerd.service 1>> $logfile 2>> $logfile

docker run hello-world | tee $logfile
#
docker images 1>> $logfile 2>> $logfile
docker ps -a 1>> $logfile 2>> $logfile
docker volume ls 1>> $logfile 2>> $logfile
#