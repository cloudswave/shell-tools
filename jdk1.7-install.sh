#!/bin/sh
sudo su #切换到root权限
mkdir /usr/local/java
cd /usr/local/java

#download jdk 1.7.67
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u67-b01/jdk-7u67-linux-x64.tar.gz

#extract jdk
tar -xvf jdk-7u67-linux-x64.tar.gz
 
export JAVA_HOME="/usr/local/java/jdk1.7.0_67"
if ! grep "JAVA_HOME=/usr/local/java/jdk1.7.0_67" /etc/environment 
then
    echo "JAVA_HOME=/usr/local/java/jdk1.7.0_67" | sudo tee -a /etc/environment 
    echo "export JAVA_HOME" | sudo tee -a /etc/environment 
    echo "PATH=$PATH:$JAVA_HOME/bin" | sudo tee -a /etc/environment 
    echo "export PATH" | sudo tee -a /etc/environment 
    echo "CLASSPATH=.:$JAVA_HOME/lib" | sudo tee -a /etc/environment 
    echo "export CLASSPATH" | sudo tee -a /etc/environment 
fi

#update environment
source /etc/environment  
sudo update-alternatives --install /usr/bin/java java /usr/local/java/jdk1.7.0_67/bin/java 2
echo "jdk is installed，请手动选择切换java版本"
sudo update-alternatives --config java 

