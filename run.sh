#!/bin/bash
mkdir -p tmp/recovery
cd tmp/recovery
git config --global color.ui false
             
  

git clone https://$user:$git_token@github.com/$repo -b master source
 
cd source
             
docker container prune --force || true
             
sudo apt install -y python3.8
             



             

             

             
pip3.8 install -r requirements.txt
pip3.8 install aiohttp
            
sudo apt install -y postgresql postgresql-contrib
sudo apt -qq install -y curl git wget python3 python3-pip aria2 ffmpeg mediainfo unzip p7zip-full p7zip-rar
             
curl https://rclone.org/install.sh | sudo bash
sudo apt-get install -y software-properties-common
             
sudo apt-get -y update
             
sudo add-apt-repository -y ppa:qbittorrent-team/qbittorrent-stable
             
sudo apt install -y qbittorrent-nox
             
export PORT=8080

sudo bash start.sh
