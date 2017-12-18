#!/bin/bash

yes | /usr/local/bin/msm update

/usr/local/bin/msm jargroup create minecraft $MINECRAFT_JAR
/usr/local/bin/msm server create $(hostname)
/usr/local/bin/msm $(hostname) jar minecraft

VERSION="minecraft/$(ls /opt/msm/versioning/minecraft | sort |tail -n1 |sed 's/.sh//')"
/bin/echo "msm-version=$VERSION" >> /opt/msm/servers/$(hostname)/server.properties
/bin/echo "eula=true" > /opt/msm/servers/$(hostname)/eula.txt

/usr/local/bin/msm $(hostname) start && tail -f /dev/null
