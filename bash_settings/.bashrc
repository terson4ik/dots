# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
alias HELP_ME='less ~/.bashrc'
alias cls=clear
alias pac-upd='sudo pacman -Syu'
alias pac-ins='sudo pacman -S'
alias v=vim
alias game=lutris
alias g=geany
alias E="$EXPLORER . &>/dev/null &"
alias HDD-on='sudo mount /dev/sda2 /mnt'
alias hdd-off='sudo umount -r /mnt'
# guide
# prog >/dev/null 2>/dev/null &
# the same is prog >/dev/null 2>&1 &
# or just prog &>/dev/null &
#
tarcgz() {
    tar -czvf "$@"
}
tarcxz() {
    tar -cJvf "$@"
}
tarxgz() {
    tar -xzvf "$@"
}
tarxxz() {
    tar -xJvf "$@"
}
inet() {
    $BROWSER -new-window "https://www.google.com/search?q=$*" &>/dev/null &
}
shedule() {
    $BROWSER -new-window 'https://cist.nure.ua/ias/app/tt/f?p=778:2:2502439617492007::NO:::#' &>/dev/null &
}
foto() { # need to good photo redactor in future
    $BROWSER -new-window "$@" &>/dev/null &
}
youtube() {
    $BROWSER -new-window "https://www.youtube.com/results?search_query=$*" &>/dev/null &
}
tube() {
    $BROWSER -new-tab "https://www.youtube.com/results?search_query=$*" &>/dev/null &
}
nure() {
    $BROWSER -new-window 'https://dl.nure.ua/my/courses.php' &>/dev/null &
}
gem() {
    $BROWSER -new-tab 'https://gemini.google.com/app' &>/dev/null &
}
gemini() {
    $BROWSER -new-window 'https://gemini.google.com/app' &>/dev/null &
}
pdf() {
    $BROWSER -new-window "$@" &>/dev/null &
}
komit() {
    git add .
    git commit -m "$*"
    git push
}
y-video() {
    yt-dlp -t mp4 "$@"
}
y-audio() {
    yt-dlp -t mp3 "$@"
}

# for assembler:
# nasmork() {
#     for f in "$@"; do
#         nasm -f elf -g "$f"
#     done
#     ld -m elf_i386 "${@/.asm/.o}" -o prog
#     rm -f *.o
# }

PS1="\[\e[32m\]\u@\h\[\e[0m\]:\[\e[34m\]\w\[\e[0m\]\$ "
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
