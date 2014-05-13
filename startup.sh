#!/bin/bash

/usr/local/bin/msm jargroup create minecraft https://s3.amazonaws.com/MinecraftDownload/launcher/minecraft_server.jar
/usr/local/bin/msm server create $(hostname)
/usr/local/bin/msm $(hostname) jar minecraft

VERSION=$(/bin/grep minecraft\/ /srv/minecraft-server-manager/versioning/versions.txt | sort |tail -n1)

/bin/echo "msm-version=$VERSION" >> /opt/msm/servers/$(hostname)/server.properties

/usr/local/bin/msm $(hostname) start
