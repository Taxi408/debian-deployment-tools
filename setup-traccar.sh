#!/bin/bash
#
cd /
#
dlfile='traccar-linux-64-5.9.zip'
urldlfile='https://github.com/traccar/traccar/releases/download/v5.9/traccar-linux-64-5.9.zip'
runfile='traccar.run'
appversion='5.9'
logfile='/rts/logs/setup-traccar.log'
#
mkdir /opt/traccar 1>> $logfile 2>> $logfile
mkdir /rts/software/traccar 1>> $logfile 2>> $logfile
#
cd /rts/software/traccar
echo "# TRACCAR Server" >> info.md
echo " " >> info.md
echo "Version: "${appversion} >> info.md
echo "Setup-Time: "$(date -R) >> info.md
echo "Source URL: "${urldlfile} >> info.md
echo "Source File: "${dlfile} >> info.md
echo " " >> info.md
echo "## Help Resources" >> info.md
echo "Vendor Installation Instructions: https://www.traccar.org/linux/" >> info.md
echo " " >> info.md
echo "## OS Control Commands" >> info.md
echo "| Use | command |" >> info.md
echo "| :-- | :------ |" >> info.md
echo "| Start Service | systemctl start traccar |" >> info.md
echo "| Stop Service | systemctl stop traccar |" >> info.md
echo "| Get Service Status | systemctl status traccar |" >> info.md
#
cd /opt/traccar 1>> $logfile 2>> $logfile
wget ${urldlfile} 1>> $logfile 2>> $logfile
unzip $ 1>> $logfile 2>> $logfile
#
bash ./${runfile} 1>> $logfile 2>> $logfile
systemctl enable traccar 1>> $logfile 2>> $logfile
systemctl start traccar 1>> $logfile 2>> $logfile
#