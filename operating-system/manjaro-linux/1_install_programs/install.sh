# run as sudo

# Get fast mirror
pacman-mirrors --fasttrack

# Update packages
pacman -Syyu


# Set Fstrimer
systemctl status fstrim.timer
systemctl enable fstrim.timer
systemctl start fstrim.timer

# Audio controller
pacman -S pavucontrol

# firewall
pacman -S ufw
ufw status
ufw enable

# ffmpeg
pacman -Sy ffmpeg x264 x265

# code
yay -S visual-studio-code-bin

# Docker
#pacman -Sy docker
#usermod -aG docker $USER

# Install these with gui AUR
# spotify
# vlc
# teams
# blender
# python38

