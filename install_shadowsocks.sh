#Ubuntu 14.04及更高版本
#添加ppa源
sudo add-apt-repository ppa:hzwhuang/ss-qt5
sudo apt-get update
sudo apt-get install shadowsocks-qt5
 
#启动shadowsocks-qt5
sudo ss-qt5
#配置账号可以使用以下方式：
 
#编辑配置文件config.ini添加
cd /home/fire/.config/shadowsocks-qt5/
sudo gedit config.ini
 
#直接通过GUI界面Add相关的账号
#直接导入已有的gui-config.json文件（建议和config.ini放在同一目录）
