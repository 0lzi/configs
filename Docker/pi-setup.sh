#!bin/bash

#This should work on Raspian and Ubuntu Server for Raspberry Pi

sudo apt update && sudo apt upgrade -y

curl -fsSL https://get.docker.com -o get-docker.sh

sh get-docker.sh

sudo usermod -aG docker $USER

sudo systemctl enable docker


