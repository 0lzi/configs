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
sudo cp -r usr/share/themes/* /usr/share/themes

#Mint X or Mint Y or both
echo "Do you want the Mint-X or Mint-Y themes or Both?"
echo " x / y / b "
read input

if [$input=="x || X"]
  then
        git clone https://github.com/linuxmint/mint-x-icons.git
        sudo cp -r mint-x-icons/usr/share/icons/* /usr/share/icons
elif [$input=="y || Y"]
  then
        git clone https://github.com/linuxmint/mint-y-icons.git
        sudo cp -r mint-y-icons/usr/share/icons/* /usr/share/icons
elif [$input=="b || B"]
  then
        git clone https://github.com/linuxmint/mint-x-icons.git
        git clone https://github.com/linuxmint/mint-y-icons.git
        sudo cp -r mint-x-icons/usr/share/icons/* /usr/share/icons
        sudo cp -r mint-y-icons/usr/share/icons/* /usr/share/icons
  else
     echo "nothing to do here"
fi


#Cleanup
rm -rf /tmp/mint-themes
