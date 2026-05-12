# Автостарт Xorg только на tty1
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
    sleep 0.5
    exec startx
fi
