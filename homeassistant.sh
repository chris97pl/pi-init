#!/bin/bash

sudo docker run --init -d \
  --name homeassistant \
  --restart=unless-stopped \
  -v /etc/localtime:/etc/localtime:ro \
  -v /PATH_TO_YOUR_CONFIG:/config \
  --network=host \
  homeassistant/raspberrypi4-homeassistant:stable
