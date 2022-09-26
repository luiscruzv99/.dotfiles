#!/bin/bash

trizen -Syu alacritty discord dunst hsetroot htop lapce ly nvidia min nerd-fonts-complete pfetch picom-ibhagwan-git rofi spacefm ttf-font-awesome vscodium ncpamixer wget xorg-fonts-util xorg-fonts-100dpi xorgs-fonts-75dpi xorg-fonts-encondings xorg-iceauth xorg-mkfontscale xorg-server xorg-server-common xorg-server-devel xorg-setxkbmap xorg-x11perf xorg-xauth xorg-xcursorgen xorg-xdpyinfo xorg-xdriinfo xorg-xev xorg-gamma xorg-xhost xorg-xinit xorg-xinput xorg-xkbcomp xorg-xkbutils xorg-xutils xorg-xkiil xorg-xlsclients xorg-xmodmap xorg-xprop xorg-xrandr xorg-xrdb xorg-xrefresh xorg-xset xorg-xsetroot xorg-xvinfo

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

ln -s ~/.dotfiles/config/nvim ~/.config/nvim
ln -s ~/.dotfiles/config/dunst ~/.config/dunst

ln -s ~/.dotfiles/.xinitrc ~/.xinitrc
ln -s ~/.dotfiles/.xbindkeys ~/.xbindkeys
ln -s ~/.dotfiles/.bash_profile ~/.bash_profiles
