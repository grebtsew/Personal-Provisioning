# run as sudo
apt-get update

# github desktop
wget https://github.com/shiftkey/desktop/releases/download/release-2.9.0-linux2/GitHubDesktop-linux-2.9.0-linux2.deb
apt-get install gdebi-core -y
gdebi GitHubDesktop-linux-2.9.0-linux2.deb

# audacity
add-apt-repository ppa:ubuntuhandbook1/audacity
apt-get update
apt-get install audacity -y

# teams
wget https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.3.00.16851_amd64.deb
dpkg -i teams_1.3.00.16851_amd64.deb
rm teams_1.3.00.16851_amd64.deb

# zoom
wget https://zoom.us/client/latest/zoom_amd64.deb
apt install ./zoom_amd64.deb -y
rm ./zoom_amd64.deb

# chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt install ./google-chrome-stable_current_amd64.deb
rm ./google-chrome-stable_current_amd64.deb

# snap classic
snap install --classic code 
snap install --classic blender
snap install --classic emacs 
snap install --classic slack 

# snap
snap install discord 
snap install vlc 
snap install spotify

# apt-get
apt-get install ffmpeg
apt-get install vim
apt-get install python3.8 
apt-get install python3-pip
apt-get install sshpass

# Docker
apt-get install docker-ce
apt-get install docker-ce-cli
apt-get install containerd.io
apt-get install docker-compose
groupadd docker 
usermod -aG docker $USER

# Gstreamer
apt install libgstreamer1.0-0 gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-tools gstreamer1.0-x gstreamer1.0-alsa gstreamer1.0-gl gstreamer1.0-gtk3 gstreamer1.0-qt5 gstreamer1.0-pulseaudio
