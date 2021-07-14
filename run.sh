#!/bin/sh
mkdir -p tmp/recovery
cd tmp/recovery
git config --global color.ui false
             
  

git clone https://$user:$git_token@github.com/$repo -b master source
 
cd source
             
docker container prune --force || true
             
sudo apt install -y python3.8
             
sudo apt install -y python3-venv
             
python3 -m venv venv
             
source venv/bin/activate
             
pip install -r requirements.txt
            
sudo apt install -y postgresql postgresql-contrib
             
sudo apt -qq install -y curl git wget python3 python3-pip aria2 ffmpeg mediainfo unzip p7zip-full p7zip-rar
             
curl https://rclone.org/install.sh | bash
             
sudo apt-get install -y software-properties-common
             
sudo apt-get -y update
             
sudo add-apt-repository -y ppa:qbittorrent-team/qbittorrent-stable
             
sudo apt install -y qbittorrent-nox
             
export PORT=8080
