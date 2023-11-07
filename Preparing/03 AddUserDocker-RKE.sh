#!/bin/bash
#For pass 
#useradd -p $(openssl passwd -crypt $PASS) $USER
#useradd -p "hash" --shell /bin/bash --home /home/docker-rke docker-rke
#usermod -aG docker docker-rke
adduser docker-rke
usermod -aG docker docker-rke
passwd docker-rke