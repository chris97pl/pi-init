#!/bin/bash

sudo docker run --init -d \
  --privileged \
  --name homeassistant \
  --restart=unless-stopped \
  -v /etc/localtime:/etc/localtime:ro \
  -v /var/homeassistant:/config \
  -v /dev/serial:/dev/serial \
  -v /dev/bus/usb:/dev/bus/usb \
  --network=host \
  homeassistant/raspberrypi4-homeassistant:stable
