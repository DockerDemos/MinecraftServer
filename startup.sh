#!/bin/bash

/usr/sbin/msm jargroup create minecraft https://s3.amazonaws.com/MinecraftDownload/launcher/minecraft_server.jar
/usr/sbin/msm server create $(hostname)
/usr/sbin/msm $(hostname) jar minecraft

VERSION=$(/bin/grep minecraft\/ /srv/minecraft-server-manager/versioning/versions.txt | sort |tail -n1)

/bin/echo "msm-version=$VERSION" >> /opt/msm/servers/$(hostname)/server.properties

/usr/sbin/msm $(hostname) start
