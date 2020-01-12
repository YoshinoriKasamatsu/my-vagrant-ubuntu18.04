#!/usr/bin/env bash
set -eu
echo "install mysql"
wget https://dev.mysql.com/get/mysql-apt-config_0.8.14-1_all.deb
sudo dpkg -i mysql-apt-config_0.8.14-1_all.deb 
sudo apt update -y
apt install -y mysql-server mysql-client
echo "install chrome complete."
