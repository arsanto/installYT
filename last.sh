#!/bin/bash

# run: source <(curl -s https://raw.githubusercontent.com/arsanto/installYT/master/install.sh)

# youtube-upload
wget https://bootstrap.pypa.io/ez_setup.py -O - | python
easy_install --upgrade google-api-python-client
wget https://github.com/tokland/youtube-upload/archive/master.zip
yum install unzip -y
unzip master.zip
cd youtube-upload-master
python setup.py install


# youtube-dl

sudo curl https://yt-dl.org/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+x /usr/local/bin/youtube-dl

#ffmpeg install

wget https://raw.githubusercontent.com/arsanto/ffmpeg-install/master/install.sh && chmod +x install.sh && ./install.sh
