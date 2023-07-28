#!/bin/bash

trizen -Syu xorg-fonts-util xorg-fonts-100dpi xorgs-fonts-75dpi xorg-fonts-encondings\
		xorg-iceauth xorg-mkfontscale xorg-server xorg-server-common xorg-server-devel\
		xorg-setxkbmap xorg-x11perf xorg-xauth xorg-xcursorgen xorg-xdpyinfo xorg-xdriinfo\
		xorg-xev xorg-gamma xorg-xhost xorg-xinit xorg-xinput xorg-xkbcomp xorg-xkbutils\
		xorg-xutils xorg-xkiil xorg-xlsclients xorg-xmodmap xorg-xprop xorg-xrandr xorg-xrdb\
		xorg-xrefresh xorg-xset xorg-xsetroot xorg-xvinfo xbindkeys wget networkmanager wpa_supplicant\
        xdg-utils

trizen -Syu alacritty dunst hsetroot htop ly nvidia starship waterfox-g-bin ranger networkmanager-dmenu-git\
		pfetch picom-ibhagwan-git rofi ttf-font-awesome ncpamixer ttf-iosevka-lyte-nerd-font nautilus\
		dmenu nautilus python-pip nodejs npm yarn pyenv neovim ripgrep

trizen -Syu vscodium

git clone https://github.com/catppuccin/rofi.git
cd rofi/basic
sh install.sh

cd ../..

git clone https://github.com/luiscruzv99/suckless
cd suckless/dwm
make && sudo make install
cd ../slstatus
make && sudo make install
cd ../..

git clone https://github.com/m-bartlett/pavol-dunst.git
cd pavol-dunst/src
make && sudo make install
cd ../..



sudo systemctl enable ly
sudo systemctl enable NetworkManager.service

ln -s ~/.dotfiles/config ~/.config

ln -s ~/.dotfiles/.xinitrc ~/.xinitrc
ln -s ~/.dotfiles/.xbindkeysrc ~/.xbindkeysrc
ln -s ~/.dotfiles/.bash_profile ~/.bash_profile
ln -s ~/.dotfiles/.bashrc ~/.bashrc

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
