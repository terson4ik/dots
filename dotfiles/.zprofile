# my own variables
export BROWSER=firefox
export EXPLORER=Thunar
export EDITOR=vim
export PATH="$HOME/.local/bin:$PATH"

# auto start Xorg only in tty1
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
    sleep 0.5
    exec startx
fi
