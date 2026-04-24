# Zorin-OS-Post-Install-Guide
Zorin OS - Post-Installation Guide

# Ubuntu-Install-Repo DEP

Note: Suitable for Ubuntu Desktop, Linux Mint, and all Ubuntu Base Distros. 
*UbuntuLTS = ULTS => Only Suitable for Ubuntu LTS

## Prepare

1. Install Ubuntu using the official installer and documentation
2. Go threw the welcome menu and setup all your preferences.
3. Update system
4. `sudo apt install timeshift`
5. Do Timeshift INIT Backup and Schedule

## Installation of Tools

Grab the latest DEBs of Proton and install them.

**Install Script**:
```bash
sudo apt install -y gnome-keyring

sudo snap install standard-notes
sudo snap install spotify
sudo snap install proton-mail
sudo snap install proton-pass
sudo snap install vivaldi
flatpak install md.obsidian.Obsidian 
flatpak install com.vscodium.codium

```

DEPRECATED:!!!!
```bash
sudo apt install curl gedit obs-studio git libfuse2 ubuntu-restricted-extras -y
sudo apt install gnome-builder calibre handbrake obs-studio vlc filelight baobab python3-virtualenv python3-pip python3 glances most dia ghex tree bleachbit ipython3 neofetch gnome-keyring android-sdk-platform-tools-common qbittorrent -y
sudo snap install spotify
sudo apt install gnome-games -y
sudo apt install virtualbox virtualbox-ext-pack -y
```

**Flatpak**:
```bash
sudo apt install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo apt install gnome-software gnome-software-plugin-flatpak gnome-software-common gnome-software-plugin-snap
``` 

```bash
sudo flatpak install com.github.marktext.marktext -y
sudo flatpak install md.obsidian.Obsidian -y
sudo flatpak install com.vscodium.codium -y
sudo flatpak install org.ghidra_sre.Ghidra -y
sudo flatpak install appimage-pool -y
sudo flatpak install com.github.tchx84.Flatseal -y
sudo flatpak install flathub org.signal.Signal -y
sudo flatpak install org.jdownloader.JDownloader -y
```

**Jetbrains**

[Download PyCharm 2025.1.2](https://www.jetbrains.com/shop/download/PC/2025100)

**IDA Free**

[My Hex-Rays Account](https://my.hex-rays.com/dashboard/download-center/installers/9.1/ida-free)

## Post install

```bash
# Prepare Graphe Plugin for IDA-free
git clone https://github.com/WqyJh/qwingraph_qt5.git
cd qwingraph_qt5
sudo ./install.sh
rm -rf qwingraph_qt5

# SSH Keygen
ssh-keygen -t rsa -b 4096 -o -a 100
```
Open Software Center and enable Flatpak unsigned in settings two find more Flatpaks 

## Performence

```bash
sudo apt install preload tlp tlp-rdw -y
sudo systemctl enable tlp --now
sudo systemctl enable fstrim.timer --now
```

## Terminal Tweaks

```bash
echo "export PAGER=most" >> ~/.bashrc
```

**Gogh**

```bash
bash -c "$(curl -sLo- https://git.io/vQgMr)"gpar
```
