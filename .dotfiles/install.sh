#!/bin/bash

echo "--------------------- Update and Upgrade ----------------------";
sudo apt update -y && apt upgrade -y;

sudo apt-get install -y \
    build-essential \
    pkg-config \
    git-core \
    autoconf \
    bison \
    libxml2-dev \
    libbz2-dev \
    libicu-dev \
    libssl-dev \
    libcurl4-openssl-dev \
    libltdl-dev \
    libjpeg-dev \
    libpng-dev \
    libpspell-dev \
    libreadline-dev \
    openjdk-11-jdk \
    openjdk-11-jre \
    curl \
    git \
    i3 \
    yadm \
    npm \
    arandr \
    dunst \
    i3lock \
    i3status \
    slock \
    nitrogen \
    unclutter \
    pasystray \
    xautolock \
    docker.io \
    cowsay \
    lolcat \
    fonts-firacode  \
    docker-compose \
    flameshot;

echo "---------------- Setup Docker ----------------";
groupadd docker
sudo usermod -aG docker $USER

echo "-------------- Installing VSCODE --------------";
sudo snap install code;

echo "-------------- Installing Discord -------------";
sudo snap install discord;

echo "-------------- Installing Spotify -------------";
sudo snap install discord;

echo "-------------- Installing DBeaver --------------";
sudo wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | sudo apt-key add -
sudo echo "deb https://dbeaver.io/debs/dbeaver-ce /" | sudo tee /etc/apt/sources.list.d/dbeaver.list
sudo apt-get update -y
sudo apt-get install dbeaver-ce -y

echo "---------- Installing MongoDB Compass ----------";
wget https://downloads.mongodb.com/compass/mongodb-compass_1.22.1_amd64.deb
sudo dpkg -i mongodb-compass_1.22.1_amd64.deb 
rm mongodb-compass_1.22.1_amd64.deb

echo "----------- Install Spotify TUI -------------";
sudo snap install spt --channel=edge;
