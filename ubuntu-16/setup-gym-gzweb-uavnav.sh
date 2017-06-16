apt-get install -y python-pip
cd ~ && git clone https://github.com/openai/gym 
cd gym && pip install -e . # minimal install
pip install opencv-python

apt-get install -y python-rospy python-genpy

curl -sL https://deb.nodesource.com/setup | bash - \
&& apt-get update && apt-get upgrade -q -y && apt-get install -q -y \
    build-essential \
    cmake \
    imagemagick \
    libboost-all-dev \
    libgts-dev \
    libjansson-dev \
    libtinyxml-dev \
    mercurial \
    nodejs \
    npm \
    pkg-config \
    psmisc\
    && rm -rf /var/lib/apt/lists/*
    
# install gazebo packages
apt-get install -q -y \
    libgazebo7-dev \
    && rm -rf /var/lib/apt/lists/*

cd ~; hg clone https://bitbucket.org/osrf/gzweb ~/gzweb
cd ~/gzweb \
    && hg up default \
    && bash -c " . /usr/share/gazebo/setup.sh; ./deploy.sh -m"
    
mkdir /root/gzweb/http/client/assets
cd /root/gzweb && bash -c "./deploy.sh -m -t"

cd ~ && git clone https://github.com/schmittlema/UAV-NAV.git
cd ~/UAV-NAV/GYM/env/launch/ && cp posix_sitl.launch ~/src/Firmware/launch/
