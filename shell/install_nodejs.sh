set -eu
echo "install nodejs"
apt-get update -y
apt-get upgrade -y
apt-get install nodejs npm -y
npm cache clean
npm install n -g
n stable
ln -sf /usr/local/bin/node /usr/bin/node
apt-get purge -y nodejs npm
echo "install nodejs complete."