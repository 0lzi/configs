#! /bin/bash

#Version 0.01 - Work In Progress
# Modified Dasgeeks AutoinstallBashScrips/installscript 
# https://github.com/dasgeekchannel/AutoInstallBashScripts/blob/master/installscript

#Determin Package installer and select appropriate install/update variable

#Run something to get distro / base then search string for 
#try below
# https://unix.stackexchange.com/questions/6345/how-can-i-get-distribution-name-and-version-number-in-a-simple-shell-script
#lsb_release -ds 2>/dev/null || cat /etc/*release 2>/dev/null | head -n1 || uname -om
#spin up VM for each type of distro and get output 

OS = 'lsb_release -ds 2>/dev/null || cat /etc/*release 2>/dev/null | head -n1 || uname -om'
#

install=""

while [ $install = "" ]; do

case $OS in
  *buntu | Debian | MX | Elementary | KDE Neon | Mint | Peppermint | Pop! |  )
    #Debian/Ubuntu base
    echo " APT package manager "
    install='sudo apt-get install -y' 
    update='sudo apt-get update;sudo apt-get upgrade -y'
    ;;
    
  Arch | Arco | Manjaro )
    #Arch Base
    echo " pacman package manager "
    install='sudo packman -S'
    update='sudo pacman -Syu'
    ;;
    
  Fedora [3*] )
    #Fedora 30+
    echo " DNF package manager "
    install='sudo dnf install'
    update='sudo dnf update'
    ;;
    
  Fedora | Rhel | Centos )
    echo " YUM package manager"
    #Fedora / Rhel / CentOs
    install='sudo yum install'
    update='sudo yum update'
    ;;
 
 Solus )
  #Solus
  echo " eopkg package manager"
  install='sudo eopkg install'
  update='sudo eopkg upgrade'
  ;;
 
 Slack | Open | Suse )
  #Slack / Suse base
  echo " zypper package manager"
  install='sudo zypper install'
  update='sudo zypper update'
  ;;

*)
echo "Please type OS base e.g. Debian , Ubuntu , Fedora "
read OS
install=$OS
;;

esac

done

#Snap install
installsn='sudo snap install'

#List of common applications to install. 
# Snapd 
# Git
# Chrome
# Steam
# Discord (SNAP)
# VLC
# Simplescreenrecorder
# TimeShift
# Gufw
# neofetch
# Nvidia Drivers
# Openssh server
# psensor
#
#
#
#
#
#
#
#
#
#
#
#
#
#Application Groups to install 
