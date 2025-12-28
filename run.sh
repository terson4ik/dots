#!/bin/bash
mkdir -p /home/$USER/.config/ ;
mv GOTOCONFIG/* /home/$USER/.config/ ;
rmdir GOTOCONFIG/;
rm -rf .git;
rm .gitignore;
mv .* /home/$USER/;
echo 'all config files successfully added ';
echo 'but config for web you must configure manually';
