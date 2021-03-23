#!/bin/bash

sudo apt -y install default-jdk
git clone https://github.com/CloudburstMC/Nukkit ~/nukkit
cd ~/nukkit
git submodule update --init
chmod +x mvnw
./mvnw clean package
cp ~/pi-init/Nukkit/Dockerfile ./Dockerfile.pi
sudo docker build -t nukkit - < Dockerfile.pi