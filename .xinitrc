#!/bin/sh
# pkill -9 pipewire &
# /usr/bin/pipewire &
# /use/bin/pipewire-pulse &
# /usr/bin/pipewire-media-session &
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources
sudo xbacklight -set 100
setxkbmap gb -option altwin:swap_alt_win
xsetroot -solid "#000000"

# autorandr docked
## autorandr undocked

slstatus &

# setxkbmap -option caps:swapescape &
# sudo modprobe -r iwlwifi &
# sudo modprobe iwlwifi &
exec dwm
