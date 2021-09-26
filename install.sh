#Instalacion de los paquetes de pacman
cd ~/.
echo "INSTALANDO PAQUETES PREVIOS"
sudo pacman -Syyu
sudo pacman -S git ranger neovim i3-gaps tmux rxvt-unicode rofi ttf-font-awesome picom alsa pulseaudio mpv

#Instalacion de ly
echo "INSTALANDO LY"
git clone https://github.com/nullgemm/ly
cd ly
make github
make
sudo make install
sudo systemctl enable ly

#Instalacion de yay
echo "ISNTALANDO YAY"
cd ~/.
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

#Instalacion de pfetch
echo "INSTALANDO PFETCH"
yay -S pfetch

#Instalacion de polybar
echo "INSTALANDO POLYBAR"
yay -S polybar
sudo pacman -S xorg-fonts-misc
yay -S siji-git ttf-unifont

#Instalacion de vim.plug
echo "INSTALANDO VIM.PLUG"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

#Instalando utilidades
yay -S pywal ranger grub-customizer betterlockscreen zazura zazura-pdf-poppler
systemctl enable betterlockscreen@$USER

#Poniendo bash bonita
echo "CONFIGURANDO BASH"
rm ~/.bash_profile
ln -sv ~/.dotfiles/.bash_profile ~
rm ~/.bashrc
cp ~/.dotfiles/.bashrc ~

#Configurando i3
echo "PONIENDO TODO BONITO"
ln -sv ~/.dotfiles/.Xresources ~
mkdir ~/.config/i3
ln -sv ~/.dotfiles/i3/config ~/.config/i3/
mkdir ~/.config/nvim
ln -sv ~/.dotfiles/nvim/ ~/.config/nvim/
mkdir ~/.config/polybar
ln -sv ~/.dotfiles/polybar/config ~/.config/polybar/
ln -sv ~/.dotfiles/polybar/launch.sh ~/.config/polybar/
