export PATH="$HOME/.local/bin:$PATH"
pipewire &
xrdb -merge ~/.Xresources
synclient TapButton1=1 &
setxkbmap -layout "us,ru" -option "grp:caps_toggle" &
slstatus &
xsetroot -solid "#282828"
Telegram &
firefox &
#okular &

exec dwm
#exec wmaker
