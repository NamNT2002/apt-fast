#!/bin/bash
#
# apt-fast: fast download package Ubuntu
# HSP Viet Nam
#
# Support: namnt2202@gmail.com
#

echo "Install apt-fast for Ubuntu"
echo "warring......"
apt-get install software-properties-common python-software-properties -y
clear
echo "add soucers list ....."
add-apt-repository ppa:apt-fast/stable << eof

eof
clear
echo ""
echo "update soucers list...."
apt-get update
clear
echo "Install apt-fast"
apt-get install apt-fast axel -y
clear
echo "success install apt-fast"
sleep 3
echo "Setting apt-fast"
rm -rf /etc/apt-fast.conf
mv apt-fast.conf /etc/apt-fast.conf
chmod 644 /etc/apt-fast.conf
chmod -R 777 /tmp/apt-fast.list
echo "alias apt-get='apt-fast'" >> ~/.bashrc 
echo "update souces list for apt-fast"
apt-fast update
rm -rf /tmp/apt-fast.list
touch /tmp/apt-fast.list
cd
source .bashrc
clear
echo "Install success full"
echo "Thanks!"
