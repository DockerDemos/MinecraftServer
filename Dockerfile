# Docker container for a Minecraft Server
# https://minecraft.net/download
#
# Build from lastest stable source code


FROM ubuntu
MAINTAINER Chris Collins <collins.christopher@gmail.com>

ADD pre-install.sh /pre-install.sh
RUN /pre-install.sh

ADD startup.sh /startup.sh

EXPOSE 25565 

CMD ["/bin/bash", "/startup.sh"]
