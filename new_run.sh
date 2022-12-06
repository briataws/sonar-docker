#!/usr/bin/env bash
[ -d /data/data/ ] || mkdir /data/data
[ -d /data/extensions/ ] || mkdir /data/extensions
[ -d /data/logs/ ] || mkdir /data/logs
[ -d /data/tmp/ ] || mkdir /data/tmp
chmod 777 /data/
chown -R 1000:1000 /data/data
chown -R 1000:1000 /data/extensions
chown -R 1000:1000 /data/logs
chown -R 1000:1000 /data/tmp
/opt/sonarqube/bin/run.sh
