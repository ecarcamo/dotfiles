#!/bin/bash

echo "🔧 Instalando paquetes base para tu entorno Hyprland..."

sudo pacman -Syu --noconfirm

# Lista de paquetes base que usas
sudo pacman -S --needed --noconfirm \
  hyprland \
  kitty \
  waybar \
  rofi \
  neovim \
  dunst \
  swaylock \
  swappy \
  fastfetch \
  htop \
  lazygit \
  qt5ct \
  qt6ct \
  neofetch \
  xdg-user-dirs \
  git \
  wl-clipboard \
  unzip \
  zip \
  pavucontrol \
  dolphin \
  pipewire pipewire-pulse wireplumber \
  ttf-jetbrains-mono-nerd

# Crear alias y clonar dotfiles con método --bare
echo "📁 Restaurando dotfiles..."

git clone --bare https://github.com/ecarcamo/dotfiles.git $HOME/.dotfiles

function dotfiles {
  /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME "$@"
}

# Evita errores al hacer checkout
mkdir -p .config-backup
dotfiles checkout 2>&1 | grep -E "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}

dotfiles checkout
dotfiles config --local status.showUntrackedFiles no

echo "✅ Dotfiles restaurados."

# Permisos de ejecución para scripts, si los tienes
chmod +x ~/.config/waybar/scripts/* 2>/dev/null
chmod +x ~/.config/hypr/scripts/* 2>/dev/null

# Actualizar carpetas de usuario
xdg-user-dirs-update

echo "🚀 Entorno configurado. Reinicia Hyprland si es necesario."
