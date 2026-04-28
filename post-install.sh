#!/bin/bash

sudo apt install -y timeshift gnome-boxes gnome-keyring git ubuntu-restricted-extras gedit gnome-builder android-sdk-platform-tools-common bleachbit ipython3 filelight baobab python3-virtualenv python3-pip python3 glances most dia ghex tree 

echo "\n"
echo "Do you want to install gnome-games? [y/N]"
read -r confirm

if [[ "$confirm" =~ ^[Yy]$ ]]; then
    sudo apt install gnome-games -y
fi
echo "\n"

echo "\n"
echo "Do you want to install some Dracula Color Themes? [y/N]"
read -r confirm

if [[ "$confirm" =~ ^[Yy]$ ]]; then
    cd ~/Downloads
    git clone https://github.com/dracula/gnome-terminal
    cd gnome-terminal
    ./install.sh
    cd ..
fi
echo "\n"

echo "\n"
echo "Do you want to install some Virtual Box? [y/N]"
read -r confirm

if [[ "$confirm" =~ ^[Yy]$ ]]; then
    sudo apt install virtualbox virtualbox-ext-pack -y
fi
echo "\n"

echo "\n"
echo "Do you want to install IDA-Free Support (qwingraph)? [y/N]"
read -r confirm

if [[ "$confirm" =~ ^[Yy]$ ]]; then
    git clone https://github.com/WqyJh/qwingraph_qt5.git
    cd qwingraph_qt5
    sudo ./install.sh
    rm -rf qwingraph_qt5
fi
echo "\n"

echo "\n"
echo "Do you want to Generate a SSH-Key)? [y/N]"
read -r confirm

if [[ "$confirm" =~ ^[Yy]$ ]]; then
    ssh-keygen -t rsa -b 4096 -o -a 100
fi
echo "\n"

sudo snap install standard-notes
sudo snap install spotify
sudo snap install proton-mail
sudo snap install proton-pass
sudo snap install vivaldi
sudo flatpak install md.obsidian.Obsidian -y
sudo flatpak install com.vscodium.codium -y
sudo flatpak install de.haeckerfelix.Shortwave -y
sudo flatpak install org.ghidra_sre.Ghidra -y
sudo flatpak install com.github.tchx84.Flatseal -y
sudo flatpak install flathub org.signal.Signal -y
sudo flatpak install org.jdownloader.JDownloader -y
sudo flatpak install com.github.marktext.marktext -y

echo "export PAGER=most" >> ~/.bashrc


