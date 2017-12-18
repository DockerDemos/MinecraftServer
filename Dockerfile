FROM ubuntu:18.04
LABEL maintainer Chris Collins <collins.christopher@gmail.com>

LABEL upstream https://minecraft.net/download

ENV PKGS screen rsync zip wget curl anacron openjdk-7-jre-headless
ENV JAVA openjdk-9-jre-headless
ENV MINECRAFT_JAR https://s3.amazonaws.com/Minecraft.Download/versions/1.12.2/minecraft_server.1.12.2.jar

RUN apt-get update \
      && DEBIAN_FRONTEND=noninteractive \
         apt-get install -y $JAVA screen rsync zip wget curl anacron \
      && apt-get clean \
      && rm -rf /var/lib/apt/lists/*

RUN useradd minecraft
RUN mkdir -p /opt/msm \
      && chown minecraft /opt/msm \
      && chmod -R 775 /opt/msm

RUN curl -L http://git.io/6eiCSg -o /etc/msm.conf
RUN curl -L http://git.io/J1GAxA -o /etc/init.d/msm \
      && chmod 775 /etc/init.d/msm
RUN curl -L http://git.io/pczolg -o /etc/cron.d/msm

RUN update-rc.d msm defaults
RUN ln -s /etc/init.d/msm /usr/local/bin/msm

ADD startup.sh /startup.sh

EXPOSE 25565

CMD ["/bin/bash", "/startup.sh"]
