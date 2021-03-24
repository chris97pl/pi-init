#!/bin/bash

sudo apt -y install autoconf automake m4 bison cmake pkg-config re2c libtool libtool-bin screen
mkdir ~/pocketmine
cd ~/pocketmine
screen -d -m -S pocketmineinstaller 'curl -sL https://get.pmmp.io | bash -s -'
screen -d -m -S pocketmine './start.sh'