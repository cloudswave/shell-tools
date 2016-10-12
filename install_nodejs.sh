#!/bin/sh
# 安装 git下最新的node，node包管理器，Forever和Cloud9IDE工具（可选），mongodb 10gen；
echo 'System Update'
apt-get update
echo 'Update completed'
apt-get install libssl-dev git-core pkg-config build-essential curl
echo 'Clone Node.js'
cd /usr/src
git clone https://github.com/nodejs/node
echo 'Node.js clone completed'

echo 'Install Node.js'
cd node
./configure && make && make install
echo 'Node.js install completed'

echo 'Install Node Package Manager'
curl http://npmjs.org/install.sh | sh
echo 'NPM install completed'

echo 'Install Forever'
npm install forever
echo 'Forever install completed'

echo 'Install Cloud9IDE'
git clone git://github.com/ajaxorg/cloud9.git
echo 'Cloud9IDE install completed'

echo 'Install MongoDB'
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" >> /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
sudo apt-get update
sudo apt-get install mongodb-10gen
echo 'MongoDB install completed.'