#elogind die :(
if [ -z "$XDG_RUNTIME_DIR" ]; then
    export XDG_RUNTIME_DIR="/tmp/runtime-$(id -u)"
    if [ ! -d "$XDG_RUNTIME_DIR" ]; then
        mkdir -p "$XDG_RUNTIME_DIR"
        chmod 0700 "$XDG_RUNTIME_DIR"
    fi
fi

pipewire &
xrandr --output HDMI-A-0 --mode 1920x1080 --rate 100
#setxkbmap -layout "us,ru" -option "grp:caps_toggle,grp_led:caps" &
setxkbmap -layout "us,ru" -option "grp:caps_toggle" &
xrdb -merge ~/.Xresources
firefox &
slstatus &
Telegram &
okular &
xsetroot -solid "#282828"
clipmenud &
sleep 3 && pamixer --set-volume 55 && pactl load-module module-remap-sink sink_name=mono master=$(pactl get-default-sink) channels=2 channel_map=mono,mono

exec dwm
