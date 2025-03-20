
# 🚀 Mis Dotfiles

Este repositorio contiene mi configuración personal para **Arch Linux** con **Hyprland**. Aquí guardo mis configuraciones para asegurar una instalación rápida y consistente en cualquier máquina. 🖥️✨

## 📂 Contenido

Estas son las configuraciones principales incluidas en este repositorio:

| 🖥️ Componente  | 📄 Configuración |
|---------------|----------------|
| **Hyprland**  | `~/.config/hypr/` |
| **Kitty Terminal** | `~/.config/kitty/` |
| **Waybar** | `~/.config/waybar/` |
| **Rofi** | `~/.config/rofi/` |
| **Neovim** | `~/.config/nvim/` |
| **Dunst (Notificaciones)** | `~/.config/dunst/` |
| **Swaylock (Bloqueo de pantalla)** | `~/.config/swaylock/` |
| **Swappy (Edición de capturas)** | `~/.config/swappy/` |
| **Lazygit** | `~/.config/lazygit/` |
| **Htop** | `~/.config/htop/` |
| **Fastfetch / Neofetch** | `~/.config/fastfetch/` y `~/.config/neofetch/` |

---

## 🔥 Instalación

Si reinstalas tu sistema, puedes restaurar tu configuración clonando este repo y ejecutando:

```bash
git clone --bare https://github.com/TU-USUARIO/dotfiles.git $HOME/.dotfiles
alias dotfiles="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
dotfiles checkout
dotfiles config --ida de capturas de pantalla en Wayland. Te permite anotar, recortar y resaltar imágenes local status.showUntrackedFiles no
```
## 🛠️ Comandos útiles

```bash
git status      # Ver cambios en las configuraciones
git add <file>  # Agregar un nuevo archivo a dotfiles
git commit -m "Mensaje" # Guardar cambios en dotfiles
git push        # Subir configuraciones a GitHub
```








