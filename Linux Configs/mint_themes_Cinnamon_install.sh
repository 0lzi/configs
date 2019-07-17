#! /bin/bash

#Version 0.01 - Work In Progress
#Forked from https://gist.github.com/esa1975/495591ca78af070c8228f4ce7a077486 to create a script compatible with any Cinnmon install.

# Install required packages
sudo apt-get install git make ruby-sass -y

# Keep all the stuff together
rm -rf /tmp/mint-themes

# Clone the repository
git clone https://github.com/linuxmint/mint-themes.git /tmp/mint-themes
cd /tmp/mint-themes

# Generate the theme files
make

# Copy the files to the system themes folder
#sudo cp -r usr/share/themes/* /usr/share/themes

#Install Mint-X
echo "Do you want the Mint-X ?  y / n " 
echo " y / n "
read input

if ["$input" -eq y ] || ["$input" -eq Y ]
        git clone https://github.com/linuxmint/mint-x-icons.git
        sudo cp -r mint-x-icons/usr/share/icons/* /usr/share/icons
        sudo cp -r user/share/themes/Linux Mint /usr/share/themes 
        sudo cp -r usr/share/themes/Mint-X* /usr/share/themes        
fi       

#Install Mint-Y
echo "Do you want the Mint-Y ?  y / n " 
echo " y / n "
read input

if ["$input" -eq y ] || ["$input" -eq Y ]
        git clone https://github.com/linuxmint/mint-y-icons.git
        sudo cp -r mint-y-icons/usr/share/icons/* /usr/share/icons
        sudo cp -r user/share/themes/Linux Mint /usr/share/themes 
        sudo cp -r usr/share/themes/Mint-Y* /usr/share/themes
fi




#Cleanup
rm -rf /tmp/mint-themes
