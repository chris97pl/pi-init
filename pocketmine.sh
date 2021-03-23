#!/bin/bash

# sudo apt -y install autoconf automake m4 bison cmake pkg-config re2c libtool libtool-bin
# curl -sL https://get.pmmp.io | bash -s -

sudo docker run -d --name pocketmine -p 19132:19132/udp georgezero/rpi-pocketmine