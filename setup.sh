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

paru -S --noconfirm \
        teamspeak \
        protonup-qt \
        brave-bin \
        prismlauncher \
        bottles \
        signal-desktop

sudo sed -i -e '$a\' -e '# Increase Nvidia\'s shader cache size to 12GB' -e '__GL_SHADER_DISK_CACHE_SIZE=12000000000' /etc/environment

git clone https://github.com/DerTyp7/.dotfiles.git ~/.config/.dotfiles
mv * ~/.config/.dotfiles ~/.config
rm -rf ~/.config/.dotfiles

read -r -p "Reboot now? (Y/n) " reply
if [[ $reply =~ ^[Yy] ]]; then
  sudo reboot now
else
  exit 0
fi