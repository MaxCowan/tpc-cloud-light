#!/bin/bash

cd ~
git config pull.ff only
git clone https://github.com/MaxCowan/tpc-cloud-light.git
cd ~/tpc-cloud-light
git pull

(crontab -l 2>/dev/null; echo "*/1 * * * * git -C /home/pi/tpc-cloud-light pull") | crontab -
