#! /bin/bash

#Version 0.01 - Work In Progress
#Forked from https://gist.github.com/esa1975/495591ca78af070c8228f4ce7a077486 to create a script compatible with any Cinnmon install.
#OS Check
OS = 'lsb_release -ds 2>/dev/null || cat /etc/*release 2>/dev/null | head -n1 || uname -om'
#

install=""

while [ $install = "" ]; do

case $OS in
  *buntu | Debian | MX | Elementary | KDE Neon | Mint | Peppermint | Pop! |  )
    #Debian/Ubuntu base
    echo " APT package manager "
    sudo apt-get install git make ruby-sass -y
    ;;
    
  Arch | Arco | Manjaro )
    #Arch Base
    echo " pacman package manager "
    sudo packman -S git make ruby-sass -y
    
    ;;
    
  Fedora [3*] )
    #Fedora 30+
    echo " DNF package manager "
    sudo dnf install git make ruby-sass -y

    ;;
    
  Fedora | Rhel | Centos )
    echo " YUM package manager"
    #Fedora / Rhel / CentOs
    sudo yum install git make ruby-sass -y

    ;;
 
 Solus )
  #Solus
  echo " eopkg package manager"
  sudo eopkg install git make ruby-sass -y

  ;;
 
 Slack | Open | Suse )
  #Slack / Suse base
  echo " zypper package manager"
  sudo zypper install git make ruby-sass -y

  ;;

*)
echo "Please type OS base e.g. Debian , Ubuntu , Fedora "
read OS
;;

esac

done

# Install required packages
sudo apt-get install git make ruby-sass -y

# Keep all the stuff together
rm -rf /tmp/mint-themes

# Clone the repository
git clone https://github.com/linuxmint/mint-themes.git /tmp/mint-themes
cd /tmp/mint-themes

# Generate the theme files
make

#Install Mint-X
echo -n "Do you want the Mint-X ? (y / n) " 
read input

if [ "$input" != "${input#[yY]}" ] ; then
        git clone https://github.com/linuxmint/mint-x-icons.git
        sudo cp -r mint-x-icons/usr/share/icons/* /usr/share/icons
        sudo cp -r usr/share/themes/Linux\ Mint /usr/share/themes 
        sudo cp -r usr/share/themes/Mint-X* /usr/share/themes
fi       

#Install Mint-Y
echo -n "Do you want the Mint-Y ? (y / n) " 
read input

if [ "$input" != "${input#[yY]}" ] ; then
        git clone https://github.com/linuxmint/mint-y-icons.git
        sudo cp -r mint-y-icons/usr/share/icons/* /usr/share/icons
        sudo cp -r usr/share/themes/Linux\ Mint /usr/share/themes 
        sudo cp -r usr/share/themes/Mint-Y* /usr/share/themes
fi


#Cleanup
rm -rf /tmp/mint-themes
