set -eu
echo "install virtualbox additions"
apt-get update -y
apt-get dist-upgrade -y
apt-get install virtualbox-guest-x11 -y
apt-get install virtualbox-guest-dkms -y
echo "install virtualbox additions complete."