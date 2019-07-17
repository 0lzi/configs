#! /bin/bash

#Version 0.01 - Work In Progress
#Forked from https://gist.github.com/esa1975/495591ca78af070c8228f4ce7a077486 to create a script


# Install required packages
sudo apt-get install git make ruby-sass -y

# Keep all the stuff together
rm -rf /tmp/mint-themes

# Clone the repository
git clone https://github.com/linuxmint/mint-themes.git /tmp/mint-themes
cd /tmp/mint-themes

# Remove existing theme files...they don't work and need to be regenerated
rm -R usr

# Generate the theme files
make

# Copy the files to the system themes folder
sudo cp -r usr/share/themes/* /usr/share/themes

cd ..

# Clone Mint-X and Mint-Y icon repositories
git clone https://github.com/linuxmint/mint-y-icons.git
git clone https://github.com/linuxmint/mint-x-icons.git

# Put icon themes in system icons folder
sudo cp -r mint-x-icons/usr/share/icons/* /usr/share/icons
sudo cp -r mint-y-icons/usr/share/icons/* /usr/share/icons
