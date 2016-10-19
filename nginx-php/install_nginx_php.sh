#!/bin/sh
# Description: 安装配置nginx php
# Author: ethanzhu http://coding.net/ethanzhu
# Date: 2016-10-19
# reference: http://www.tyrantek.com/archives/334/,http://ethanzhu.leanote.com/post/ubuntu%E4%B8%8B%E9%85%8D%E7%BD%AE%E5%AE%89%E8%A3%85nginx%E3%80%81php
echo ">>> Start install nginx and php>>>"
#apt-get install mysql-server
apt-get install nginx
apt-get install php5-fpm
apt-get install php5-cli php5-gd php5-mcrypt php5-mysql
apt-get wget

mkdir /var/www

# 修改配置文件 /etc/nginx/sites-available/default
wget -O default http://leanote.com/api/file/getAttach?fileId=5806f1aaab64413a7e00f07c
cp default /etc/nginx/sites-available/default

# 重启服务
service php5-fpm restart
service nginx restart
echo "<<< install Finish <<<"
echo "The website root is '/var/www' port:80"