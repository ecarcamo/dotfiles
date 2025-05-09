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

## 🔥 Instalación automática en una computadora nueva

He preparado un script llamado `install.sh` que automatiza todo el proceso:

1. **Actualiza el sistema**.
2. **Instala los paquetes necesarios**.
3. **Clona y aplica los dotfiles usando `git bare`**.
4. **Reasigna permisos y limpia conflictos si es necesario**.

### 📥 Paso a paso

Clona el repositorio y ejecuta el script:

```bash
git clone https://github.com/TU-USUARIO/dotfiles.git ~/dotfiles
# Clona este repositorio en tu $HOME

cd ~/dotfiles
# Entra a la carpeta del repositorio

chmod +x install.sh
# Da permisos de ejecución al script

./install.sh
# Ejecuta el script de instalación automática
```

---

## ⚙️ Instalación manual (opcional)

Si prefieres hacer el proceso manualmente:

### 1. Clonar el repositorio de dotfiles en modo `--bare`

```bash

git clone --bare https://github.com/TU-USUARIO/dotfiles.git $HOME/.dotfiles
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

¡Listo! Con estos pasos y tu `install.sh`, puedes clonar, restaurar y usar tu entorno Arch + Hyprland en cualquier máquina 💻🚀
