Minecraft Server
================

All-in-one Minecraft Server in a Docker container

* [Minecraft](https://minecraft.net/download)

Maintainer: Chris Collins \<collins.christopher@gmail.com\>

Updated: 2014-05-13

##Caution##

This Docker Container is still being developed.  It will not yet work, but hopefully it should be functioning soon.  Check back later, or better yet, issue a pull request and help out!

##Building and Running##

This is a [Docker](http://docker.io) container image.  You need to have Docker installed to build and run the container.

To build the image, change directories into the root of this repository, and run:

`docker build -t Minecraft .`  <-- note the period on the end

Once it finishes building, you can run the container with:

`docker run -i -t -d -p 25565:25565 Minecraft`

Then, open your Minecraft client and connect to "localhost" or "127.0.0.1" to start playing.

To improve startup speed, this image will not update with the latest version of the Minecraft software automatically once the initial image is built.  When a new update is released, run the `docker build` command from above to get the newest version.

##Making the Server Publicly Available##

The `docker run` command above will run the Docker container with your new Minecraft server in a manner that is ready to accept connections from the public.  Just make sure your host's firewall is set to accept incoming connection on port 25565, and your router is configured to pass traffic on port 25565 back to the host running your Docker container.

##Known Issues##

Tracked on Github: [https://github.com/DockerDemos/MinecraftServer/issues](https://github.com/DockerDemos/MinecraftServer/issues)

##Acknowledgements##

Thanks to:

* The community at [Minecraft Server Manager](http://msmhq.com/) for developing a full-featured init script for Minecraft servers.

##Copyright Information##

Copyright (C) 2014 Chris Collins

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see http://www.gnu.org/licenses/.
