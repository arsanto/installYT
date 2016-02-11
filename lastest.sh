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

# ffmpeg

rpm -Uvh http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el7.rf.x86_64.rpm

rpm -Uvh http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-1.el7.nux.noarch.rpm

yum update -y

yum install ffmpeg -y

yum install gstreamer* -y
