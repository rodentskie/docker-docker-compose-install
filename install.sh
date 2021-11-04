#!/bin/bash

# update system
sudo apt update -y

# install prerequiste packages
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

# then add the GPG key for the official Docker repository to your system:
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -


# add the Docker repository to APT sources:
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"


# update again after adding docker
sudo apt update -y

# make sure you are about to install from the Docker repo instead of the default Ubuntu repo:
sudo apt-cache policy docker-ce

# finally, install Docker:
sudo apt -y install docker-ce

# done installing docker
# now to install docker compose

# We’ll check the current release and if necessary, update it in the command below:
# replace the version below: check the latest here: https://github.com/docker/compose/releases
sudo curl -L https://github.com/docker/compose/releases/download/2.1.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose


# set permissions
sudo chmod +x /usr/local/bin/docker-compose

# verification
sudo docker-compose --version

# check status of docker
sudo systemctl status docker

# done enjoy
