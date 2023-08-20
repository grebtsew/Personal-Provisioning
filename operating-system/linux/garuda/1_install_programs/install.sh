# run as sudo
sudo pacman -Syu --noconfirm

# install yay
sudo pacman -Sy base-devel --noconfirm
sudo pacman -Syy --noconfirm
sudo pacman -Su --noconfirm
sudo pacman -S yay --noconfirm
git clone https://aur.archlinux.org/yay.git 
cd yay
makepkg -si --prefix=/usr/local
cd ..
rm -rf yay


#firefox
sudo pacman -S firefox --noconfirm


# github desktop
yay -S github-desktop-bin --noconfirm


# teams
yay -S teams --noconfirm

#vscode
sudo pacman -S code --noconfirm

#vlc
sudo pacman -S vlc --noconfirm

# spotify
yay -S spotify --noconfirm


# stream
sudo pacman -S steam --noconfirm


# docker
yay -S docker --noconfirm
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER


# Clean up
sudo pacman -Rns $(pacman -Qdtq) --noconfirm
sudo pacman -Sc --noconfirm



