#!/bin/sh
#
# by ehtnahzu@qq.com
# 最新版设置docker镜像源脚本 可以手动添加镜像源到MIRROR_URL
# echo a |sudo tee 1.txt
MIRROR_URL='"https://docker.mirrors.ustc.edu.cn","http://3a35aff6.m.daocloud.io","http://ethanzhu.m.tenxcloud.net"'
echo '{
    "registry-mirrors": ['$MIRROR_URL']
}' | sudo tee /etc/docker/daemon.json
sudo service docker restart
