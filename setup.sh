#!/bin/bash

sudo pacman -Syu --noconfirm\
                cachyos-gaming-meta \
                cachyos-gaming-applications \
                dysk \
                htop \
                nvim \
                godot \
                discord \
                obs-studio \
                vlc \
                brave-bin

paru -Syu --noconfirm \
        teamspeak \
        protonup-qt \
        brave-bin \
        prismlauncher \
        bottles \
        signal-desktop

git clone https://github.com/DerTyp7/.dotfiles.git ~/.config/.dotfiles
mv -f * ~/.config/.dotfiles ~/.config
rm -rf ~/.config/.dotfiles

read -r -p "Reboot now? (Y/n) " reply
if [[ $reply =~ ^[Yy] ]]; then
  sudo reboot now
else
  exit 0
fi