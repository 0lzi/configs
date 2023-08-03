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
#alias newkey ='ssh-keygen -t ed25519'
#alias konect ="sshpass -p $MYPASS ssh"
#alias konectpi ="sshpass -p $PIPASS ssh"
#alias dcps='docker ps -a'
#alias dcp='docker-compose up -d '
#alias dcpull='docker-compose pull'
#alias diprune='docker image prune'
#alias dcstop='docker stop $(docker ps -a -q)'
#alias dcrem='docker rm $(docker ps -a -q)'
#alias dtail='docker logs -tf --tail="50" "$@"'


#WorkInProgress
echo "#Custom Alias " >> ~/.bashrc
echo "alias bye='echo bye && sudo systemctl suspend'" >> ~/.bashrc
echo "alias cpuwatch='watch -n 1 grep MHz /proc/cpuinfo'" >> ~/.bashrc
echo "alias untar='tar -zxvf ' " >> ~/.bashrc
echo "alias newkey='ssh-keygen -t ed25519'" >> ~/.bashrc
echo "alias diskuseage='sudo baobab'" >> ~/.bashrc
echo "alias konect ="sshpass -p $MYPASS ssh"" >> ~/.bashrc
echo "alias konectpi ="sshpass -p $PIPASS ssh"" >> ~/.bashrc
echo "alias dcps='docker ps -a'"
echo "alias dcp='docker-compose up -d '"
echo "alias dcpull='docker-compose pull'"
echo "alias diprune='docker image prune'"
echo "alias dcstop='docker stop $(docker ps -a -q)'"
echo "alias dcrem='docker rm $(docker ps -a -q)'"
echo "alias dtail='docker logs -tf --tail="50" "$@"'"
