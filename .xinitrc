picom -b -cfF -o 0.38 -O 200 -I 200 -t 0 -l 0 -r 3 -D2 -i 0.9 --corner-radius 10 --round-borders 1 
xbindkeys
dunst &
xbacklight-notify &
hsetroot -solid "#ca9ee6"
slstatus >/dev/null &
exec dwm
