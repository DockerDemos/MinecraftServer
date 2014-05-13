#!/bin/bash

yes | /usr/local/bin/msm update

/usr/local/bin/msm jargroup create minecraft https://s3.amazonaws.com/MinecraftDownload/launcher/minecraft_server.jar
/usr/local/bin/msm server create $(hostname)
/usr/local/bin/msm $(hostname) jar minecraft

VERSION="minecraft/$(ls /opt/msm/versioning/minecraft | sort |tail -n1 |sed 's/.sh//')"
/bin/echo "msm-version=$VERSION" >> /opt/msm/servers/$(hostname)/server.properties

/usr/local/bin/msm $(hostname) start
