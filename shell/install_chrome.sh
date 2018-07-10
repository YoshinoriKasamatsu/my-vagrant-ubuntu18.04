#!/usr/bin/env bash
set -eu
echo "install chrome"
curl -O https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get -y install libappindicator1
sudo dpkg -i google-chrome-stable_current_amd64.deb
echo "install chrome complete."