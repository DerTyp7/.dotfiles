echo "[INFO] Installing system packages (pacman)..."
sudo pacman -Syu --noconfirm\
                cachyos-gaming-meta \
                cachyos-gaming-applications \
                dysk \
                docker \
                github-cli \
                htop \
                nvim \
                godot \
                discord \
                obs-studio \
                vlc \
                brave-bin \
                ttf-jetbrains-mono-nerd
echo "[INFO] pacman install finished."

echo "[INFO] Installing AUR / user packages (paru)..."
paru -Syu --noconfirm \
        protonup-qt \
        brave-bin \
        prismlauncher \
        bottles \
        signal-desktop \
        visual-studio-code-bin
echo "[INFO] paru install finished."


TS_URL="https://files.teamspeak-services.com/pre_releases/client/6.0.0-beta3/teamspeak-client.tar.gz"
TMPDIR="$(mktemp -d)"
trap 'rm -rf "$TMPDIR"' EXIT

echo "[INFO] Downloading TeamSpeak client..."
curl -L --fail -sS -o "$TMPDIR/teamspeak-client.tar.gz" "$TS_URL"
echo "[INFO] Download complete. Extracting..."
mkdir -p "$TMPDIR/extracted"
tar -xzf "$TMPDIR/teamspeak-client.tar.gz" -C "$TMPDIR/extracted"

echo "[INFO] Installing TeamSpeak to /opt/teamspeak (may require sudo)..."
sudo rm -rf /opt/teamspeak
sudo mkdir -p /opt/teamspeak
sudo rsync -a "$TMPDIR/extracted"/ /opt/teamspeak/

echo "[INFO] Setting executable bit and ownership..."
sudo chmod +x /opt/teamspeak/TeamSpeak
sudo chown -R $(id -u):$(id -g) /opt/teamspeak

echo "[INFO] Installing desktop entry..."
mkdir -p "$HOME/.local/share/applications"
curl -L --fail -sS -o "$HOME/.local/share/applications/TeamSpeak.desktop" "https://raw.githubusercontent.com/DerTyp7/.dotfiles/refs/heads/master/TeamSpeak.desktop"
chmod 655 "$HOME/.local/share/applications/TeamSpeak.desktop"

echo "[INFO] TeamSpeak client installed to /opt/teamspeak"