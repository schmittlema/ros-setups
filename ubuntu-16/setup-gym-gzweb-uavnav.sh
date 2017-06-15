apt-get install python-pip
cd ~ && git clone https://github.com/openai/gym 
cd gym && pip install -e . # minimal install
pip install opencv-python

apt-get install -y python-rospy python-genpy

apt-get update && apt-get upgrade -q -y && apt-get install -q -y \
    build-essential \
    cmake \
    imagemagick \
    libboost-all-dev \
    libgts-dev \
    libjansson-dev \
    libtinyxml-dev \
    mercurial \
    nodejs \
    nodejs-legacy \
    npm \
    pkg-config \
    psmisc\
&& rm -rf /var/lib/apt/lists/*

cd ~; hg clone https://bitbucket.org/osrf/gzweb
cd ~/gzweb \
    && hg up default \
&& ./deploy.sh -m

cd ~ &&git clone https://github.com/schmittlema/UAV-NAV.git
