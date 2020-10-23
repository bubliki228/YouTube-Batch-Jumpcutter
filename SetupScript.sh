#!/bin/sh
git clone https://github.com/carykh/jumpcutter
git clone https://github.com/Quakumei/YTHDBatchDownloader
pip install -r jumpcutter/requirements.txt
sudo apt-get install ffmpeg
touch LINK_LIST.txt
