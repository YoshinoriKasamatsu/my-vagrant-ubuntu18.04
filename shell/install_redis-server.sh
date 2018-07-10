set -eu
echo "install redis-server"
apt-get update -y
apt-get upgrade -y
apt-get install redis-server -y
echo "install redis-server complete."