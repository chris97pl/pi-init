#!/bin/bash

wget https://archive.raspberrypi.org/debian/pool/main/r/raspi-config/raspi-config_20200601_all.deb -P /tmp
sudo apt-get install libnewt0.52 whiptail parted triggerhappy lua5.1 alsa-utils libraspberrypi-bin -y
sudo apt-get install -fy
sudo dpkg -i /tmp/raspi-config_20200601_all.deb
