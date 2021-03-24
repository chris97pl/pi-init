#!/bin/bash

mkdir ~/waveshare
cd ~/waveshare

sudo apt -y install cpp gcc

wget http://www.airspayce.com/mikem/bcm2835/bcm2835-1.60.tar.gz
tar zxvf bcm2835-1.60.tar.gz
cd bcm2835-1.60/
sudo ./configure
sudo make && sudo make check && sudo make install

cd ~/waveshare

sudo apt -y install p7zip-full
wget https://www.waveshare.com/w/upload/b/b7/PoE_HAT_B_code.7z
7z x PoE_HAT_B_code.7z -r -o./PoE_HAT_B_code

cd ~/waveshare

sudo apt-get install wiringpi
wget https://project-downloads.drogon.net/wiringpi-latest.deb
# sudo dpkg -i wiringpi-latest.deb
gpio -v

sudo apt-get -y install python3-pip
sudo pip3 install pillow
sudo pip3 install numpy
sudo apt -y install libopenjp2-7
sudo apt -y install libtiff-dev
sudo apt -y install libtiff5
sudo apt -y install libatlas-base-dev
sudo apt -y install python3-rpi.gpio
sudo pip3 install RPi.GPIO
sudo pip3 install smbus

cp PoE_HAT_B_code/PoE_HAT_B_code/python/examples/main.py ~/waveshare

sudo python3 main.py

