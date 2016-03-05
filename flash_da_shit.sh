#!/bin/bash

sudo service octoprint stop
cd ~/Marlin
git pull
ino build -m mega2560
ino upload -p /dev/ttyACM0 -m mega2560
sudo service octoprint start

