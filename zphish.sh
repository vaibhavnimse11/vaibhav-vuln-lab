#!/bin/bash

sudo apt update
sudo apt install git -y
git clone https://github.com/htr-tech/zphisher.git
cd zphisher
sudo ./zphisher.sh
