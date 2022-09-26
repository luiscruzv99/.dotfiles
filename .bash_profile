#
# ~/.bash_profile
#
export LC_TYPE="es_ES.UTF-8"
export DRI_PRIME=1

if [ "$(tty)" = "/dev/tty2" ]; then
	exec startx && xsetroot -solid "#ca9ee6"
fi;		

[[ -f ~/.bashrc ]] && . ~/.bashrc
