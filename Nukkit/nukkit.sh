#!/bin/bash

sudo docker run -it \
  --restart=unless-stopped \
  --name homeassistant \
   -p 19132:19132 nukkit