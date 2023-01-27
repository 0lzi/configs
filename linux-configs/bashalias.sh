#! /bin/bash

#Version 0.01 - Work In Progress
#Script to append custom alias' to bashrc

#Export
#export PIPASS=supersecretpassword
#export MYPASS=supersecretpassword

#Custom Alias
#alias bye='echo bye && sudo systemctl suspend'
#alias cpuwatch='watch -n 1 grep MHz /proc/cpuinfo'
#alias untar='tar -zxvf '
#alias newkey ='ssh-keygen -t ecdsa -b 521'
#alias konect ="sshpass -p $MYPASS ssh"
#alias konectpi ="sshpass -p $PIPASS ssh"



#WorkInProgress
echo "#Custom Alias " >> ~/.bashrc
echo "alias bye='echo bye && sudo systemctl suspend'" >> ~/.bashrc
echo "alias cpuwatch='watch -n 1 grep MHz /proc/cpuinfo'" >> ~/.bashrc
echo "alias untar='tar -zxvf ' " >> ~/.bashrc
echo "alias newkey='ssh-keygen -t ecdsa -b 521'" >> ~/.bashrc
echo "alias diskuseage='sudo baobab'" >> ~/.bashrc
echo "alias konect ="sshpass -p $MYPASS ssh"" >> ~/.bashrc
echo "alias konectpi ="sshpass -p $PIPASS ssh"" >> ~/.bashrc

