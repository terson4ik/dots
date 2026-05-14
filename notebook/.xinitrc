export PATH="$HOME/.local/bin:$PATH"
xset r rate 300 50
setxkbmap -layout "us,ru" -option "grp:caps_toggle" & #grp:caps_toggle,grp_led:caps
xinput set-prop 'AlpsPS/2 ALPS DualPoint TouchPad' 'libinput Tapping Enabled' 1
slstatus &
Telegram &
xsetroot -solid "#282828"
#redshift -l 50.454009:30.619396 &
firefox &
exec dwm

#############UNUSED

#feh --bg-scale /home/terson/Pictures/desk.png
#clipmenud &
