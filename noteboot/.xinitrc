export PATH="$HOME/.local/bin:$PATH"
xrdb -merge ~/.Xresources
xset r rate 300 50
setxkbmap -layout "us,ru" -option "grp:caps_toggle" & #grp:caps_toggle,grp_led:caps
slstatus &
xsetroot -solid "#282828"
redshift -l 50.454009:30.619396 &
firefox &
exec dwm # dbus needed the vscode

#############UNUSED

#Telegram &
#feh --bg-scale /home/terson/Pictures/desk.png
#clipmenud &