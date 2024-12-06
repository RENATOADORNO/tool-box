#!/bin/bash

sudo apt-get update

sudo apt-get install vim -y

sudo apt-get install iptables -y
sudo apt-get install lsof -y
sudo apt-get install acl -y
sudo apt-get install fuse3 -y

sudo apt install gnupg ca-certificates

sudo apt-get install transmission -y
sudo apt-get install transmission-daemon -y

sudo -v ; curl https://rclone.org/install.sh | sudo bash