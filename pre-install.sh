#!/bin/bash

/usr/bin/apt-get update
/usr/bin/apt-get -y install screen rsync zip wget cron anacron openjdk-7-jre

/usr/sbin/useradd minecraft

/bin/mkdir /opt/msm
/bin/chown minecraft /opt/msm
/bin/chmod -R 775 /opt/msm

/usr/bin/wget http://git.io/6eiCSg -O /etc/msm.conf
/usr/bin/wget http://git.io/J1GAxA -O /etc/init.d/msm
/usr/bin/wget http://git.io/pczolg -O /etc/cron.d/msm

/bin/chmod 775 /etc/init.d/msm
/usr/sbin/update-rc.d msm defaults
/usr/sbin/service cron reload

/bin/ln -s /etc/init.d/msm /usr/local/bin/msm

/usr/local/bin/msm update

/bin/echo "Pre-install complete"

