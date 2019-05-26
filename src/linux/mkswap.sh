#!/usr/bin/env sh
# Make swap file
# usage: mkswap.sh 4G 
sudo fallocate -l ${1} /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
