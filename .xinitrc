# xorg settings
xset r rate 230 30
xrdb ~/.Xresources

# env variables
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

# autostart
feh --bg-scale ~/Pictures/nord.png &
fcitx5 &

# lemon bar
./lemon.sh &

# start wm
exec sowm
