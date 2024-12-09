#!/bin/bash

sudo apt-get update

sudo apt-get install vim -y
sudo apt-get install unzip -y
sudo apt-get install htop -y

sudo apt-get install iptables -y
sudo apt-get install lsof -y
sudo apt-get install acl -y
sudo apt-get install fuse3 -y

sudo apt install gnupg ca-certificates

# transmission
sudo apt-get install transmission -y
sudo apt-get install transmission-daemon -y

sudo -v ; curl https://rclone.org/install.sh | sudo bash

# docker
# curl -fsSL https://get.docker.com -o get-docker.sh
# sudo sh get-docker.sh

sudo mkdir /mnt/rclone
sudo mkdir /mnt/rclone/cache/midia
sudo mkdir /mnt/transmission

# install portainer
# sudo docker run -d -p 9000:9000 --name portainer --restart always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest -H unix:///var/run/docker.sock