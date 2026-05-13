#!/bin/bash
mkdir -p /home/$USER/.config/ 
mkdir -p /home/$USER/.local/bin 
mv GOTOCONFIG/* /home/$USER/.config/ 
rm -rf .git 
rm -rf README.md
rm -rf GOTOCONFIG 
read -n 1 -p "type 'y' if you have a notebook, or 'n' if this wrong" answer
echo ''
if [[ "${answer,,}" == "y" ]] ; then
    mv notebook/.[!.]* ./
fi
rm -rf notebook/
mv .[!.]* /home/$USER/
echo 'all config files successfully added '
echo ''
read -n 1 -p "type 'y' if you like install suckless" answer
if [[ "${answer,,}" == "y" ]] ; then
    ./get_dwm.sh
fi
read -n 1 -p "type 'y' to install Telegram" answer
echo ''
if [[ "${answer,,}" == "y" ]] ; then
    wget 'https://telegram.org/dl/desktop/linux' -O telega.tar.gz
    tar -xavf telega.tar.gz
fi    
echo 'but config for web you must configure manually'
