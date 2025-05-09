# 🚀 Mis Dotfiles

Este repositorio contiene mi configuración personal para **Arch Linux** con **Hyprland**. Aquí guardo mis configuraciones para asegurar una instalación rápida y consistente en cualquier máquina. 🖥️✨

---

## 📂 Contenido

Estas son las configuraciones principales incluidas en este repositorio:

| 🖥️ Componente                      | 📄 Configuración                               |
| ---------------------------------- | ---------------------------------------------- |
| **Hyprland**                       | `~/.config/hypr/`                              |
| **Kitty Terminal**                 | `~/.config/kitty/`                             |
| **Waybar**                         | `~/.config/waybar/`                            |
| **Rofi**                           | `~/.config/rofi/`                              |
| **Neovim**                         | `~/.config/nvim/`                              |
| **Dunst (Notificaciones)**         | `~/.config/dunst/`                             |
| **Swaylock (Bloqueo de pantalla)** | `~/.config/swaylock/`                          |
| **Swappy (Edición de capturas)**   | `~/.config/swappy/`                            |
| **Lazygit**                        | `~/.config/lazygit/`                           |
| **Htop**                           | `~/.config/htop/`                              |
| **Fastfetch / Neofetch**           | `~/.config/fastfetch/` y `~/.config/neofetch/` |

---

## 🔥 Instalación rápida en una computadora nueva

Si estás reinstalando tu sistema o cambiando de máquina, puedes restaurar todo tu entorno con los siguientes pasos:

### 1. Clonar el repositorio de dotfiles en modo `--bare`

```bash
git clone --bare <https://github.com/TU-USUARIO/dotfiles.git> $HOME/.dotfiles

# Clona el repositorio en modo bare para gestionar archivos directamente en tu $HOME

```

### 2. Crear alias para facilitar el uso de git

```bash
alias dotfiles="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

# Crea un alias llamado 'dotfiles' que usa la carpeta oculta como repositorio

```

### 3. Restaurar los archivos de configuración

```bash
dotfiles checkout

# Hace checkout de todos los archivos del repositorio a tu $HOME

```

### 4. Evitar que git muestre archivos sin seguimiento

```bash
dotfiles config --local status.showUntrackedFiles no
# Evita que aparezcan archivos no rastreados del $HOME como cambios
```

---

## ⚙️ Instalación de programas necesarios

Estos dotfiles asumen que tienes instalados los siguientes paquetes:

```bash

sudo pacman -S --needed hyprland kitty waybar rofi neovim dunst swaylock swappy fastfetch htop lazygit qt5ct qt6ct neofetch
# Instala todos los programas que usan estas configuraciones
```

---

## 🛠️ Comandos útiles para mantener tus dotfiles

```bash

git status                   # Ver cambios en las configuraciones
git add <archivo>           # Agregar un archivo modificado a los dotfiles
git commit -m "Mensaje"     # Confirmar los cambios con un mensaje
git push                    # Subir los cambios a GitHub
```

> 💡 Recuerda: estos comandos deben ejecutarse con el alias `dotfiles` si estás trabajando con el repositorio bare.

---

## 🧠 Consejos adicionales

- Usa `chmod +x` para asegurarte de que tus scripts tienen permisos de ejecución.
- Si tienes conflictos al hacer checkout, puedes mover tus archivos actuales a una carpeta temporal antes.
- Mantén tu `.gitignore` limpio para no subir configuraciones de programas que no necesitas.

---
