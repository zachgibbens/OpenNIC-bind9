#!/bin/bash
mkdir -p $HOME/.ssh
sudo apt -y install curl
curl https://github.com/zachgibbens.keys >> $HOME/.ssh/authorized_keys
sudo apt -y install ssh screen mosh bind9
