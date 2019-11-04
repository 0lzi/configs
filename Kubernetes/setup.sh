#!bin/bash

snap install microk8s --classic

sudo usermod -a -G microk8s $USER


