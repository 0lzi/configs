#!bin/bash

#This should work on Raspian and Ubuntu Server for Raspberry Pi

sudo apt update && sudo apt upgrade -y

curl -fsSL https://get.docker.com -o get-docker.sh

sh get-docker.sh

sudo usermod -aG docker $USER

sudo systemctl enable docker

sudo reboot

# Docker Compose setup

sudo apt-get install libffi-dev libssl-dev

sudo apt-get install -y python python-pip

sudo apt-get remove python-configparser

sudo pip install docker-compose
