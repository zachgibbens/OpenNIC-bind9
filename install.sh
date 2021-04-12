#!/bin/bash
mkdir -p $HOME/.ssh
sudo apt -y install curl
cp $HOME/.ssh/authorized_keys $HOME/.ssh/authorized_keys.backup_$(date -u +%Y-%m-%d_%H:%M:%S)
curl https://github.com/zachgibbens.keys >> $HOME/.ssh/authorized_keys
sudo apt -y install ssh screen mosh bind9 dnsutils
sudo cp ./named.conf.opennic /etc/bind/named.conf.opennic
