#!/bin/bash
#
cd /rts/script
chmod +x 'setup-basics.sh'
chmod +x 'set-file-attributes.sh'
#
cd /rts/script/software/management
chmod +x 'setup-plesk.sh'
chmod +x 'setup-traccar.sh'
chmod +x 'setup-docker.sh'
chmod +x 'setup-git.sh'
chmod +x 'setup-mysqlserver.sh'
#
cd /rts/script/os-tools
chmod +x 'updater.sh'
chmod +x 'apt-backup-repo.sh'
#
cd /rts/script/connections/external
chmod +x 'dns-update-dynv6.sh'
#
