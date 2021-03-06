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

wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
chmod a+rx /usr/local/bin/youtube-dl

# ffmpeg

rpm --import http://li.nux.ro/download/nux/RPM-GPG-KEY-nux.ro
yum -y install http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm
yum install ffmpeg -y
yum install lib* -y --skip-broken

#rpm -Uvh http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el7.rf.x86_64.rpm
#rpm -Uvh http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-1.el7.nux.noarch.rpm
#yum repolist
#yum update -y
#yum install ffmpeg -y

wget --no-check-certificate https://raw.githubusercontent.com/arsanto/auto/master/ad2 && chmod +x ad2
wget --no-check-certificate https://raw.githubusercontent.com/arsanto/auto/master/bin && chmod +x bin
wget --no-check-certificate https://raw.githubusercontent.com/arsanto/playtotxt/master/pl && chmod +x pl
wget --no-check-certificate https://raw.githubusercontent.com/arsanto/auto/master/remove && chmod +x remove





