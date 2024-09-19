#!/bin/sh

# install python pip
sudo wget https://bootstrap.pypa.io/get-pip.py
sudo python3 ./get-pip.py

# install cron
sudo dnf install cronie cronie-anacron
sudo systemctl enable crond.service
sudo systemctl start crond.service

mkdir ~/tmp
sudo TMPDIR=~/tmp/ python3 -m pip install -r requirements.tx --no-cache-dir