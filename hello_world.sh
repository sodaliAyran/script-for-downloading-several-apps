#!/bin/bash         

echo "Hello, World"
echo "Downloading curl"
sudo apt-get install curl
sudo apt-get update
echo "..................................................................."
echo "Downlaoding Discord"
echo "..................................................................."
wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
echo "..................................................................."
echo "Discord Download Finished"
echo "Installing Discord"
echo "..................................................................."
sudo apt-get install gdebi-gtk
sudo apt-get install libgconf-2-4 libappindicator1
sudo apt-get update
sudo dpkg -i discord.deb
echo "..................................................................."
echo "Discord Installation Completed"
echo "Downloading Anaconda"
echo "..................................................................."
curl -O https://repo.anaconda.com/archive/Anaconda3-5.1.0-Linux-x86_64.sh
echo "..................................................................."
echo "output should be similar to this"
echo "55e4db1919f49c92d5abbf27a4be5986ae157f074bf9f8238963cd4582a4068a  Anaconda3-5.1-Linux-x86_64.sh"
echo "..................................................................."
sha256sum Anaconda3-5.1.0-Linux-x86_64.sh
bash Anaconda3-5.1.0-Linux-x86_64.sh
conda list
echo "..................................................................."
echo "Installing pycharm"
echo "..................................................................."
sudo snap install pycharm-community --classic
echo "..................................................................."
echo "pycharm Installed"
echo "Installing mongoDB"
echo "..................................................................."

# Import the Public Key used by the Ubuntu Package Manager
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5

# Create a file list for mongoDB to fetch the current repository
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.6.list

sudo apt-get update


# Install MongoDB

sudo apt-get install -y mongodb-org

# Start the MongoDB Service
echo "........................................................................"
echo "write sudo service mongod stop to exit"
echo "........................................................................"
sudo service mongod start

echo "..................................................................."
echo "Downloading MySQL"
echo "........................................................................."
sudo apt-get update
sudo apt-get install mysql-server
mysql_secure_installation


echo "Thanks for using this script."
echo "..................................................................."
