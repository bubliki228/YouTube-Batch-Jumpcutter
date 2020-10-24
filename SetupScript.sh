#!/bin/sh
git clone https://github.com/carykh/jumpcutter
git clone https://github.com/Quakumei/YouTube-HD-Batch-Downloader
pip install -r jumpcutter/requirements.txt
pip install pytube3
sudo apt-get install ffmpeg
touch LINK_LIST.txt
