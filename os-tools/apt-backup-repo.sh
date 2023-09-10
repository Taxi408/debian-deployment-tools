#!/bin/bash
#
cd /
apt-dir='/etc/apt'
apt-backup='/rts/backup/system/apt'
#apt-backup='/test/dirtest'
apt-repo-oslist="${apt-dir}/sources.list"
apt-repo-lists="${apt-dir}/sources.list.d"
apt-repo-trusted="${apt-dir}/trusted.gpg.d"
#
ls -a -l -G -x -p --color ${apt-repo-lists} >> "${apt-backup}/sources.list.d.log"
ls -a -l -G -x -p --color ${apt-repo-trusted} >> "${apt-backup}/trusted.gpg.d.log"
#
cd ${apt-backup} 
mkdir "$(date -R)" && cd "$(date -R)" && cp ${apt-repo-oslist} sources.list && mkdir sources.list.d && mkdir trusted.gpg.d && cp ${apt-repo-lists}/* sources.list.d/ && cp ${apt-repo-trusted}/* trusted.gpg.d/
#
