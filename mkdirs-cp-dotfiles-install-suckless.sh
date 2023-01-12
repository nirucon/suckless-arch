#!/bin/bash

# some "automation" for my suckless setup

# mkdirs
echo "mkdirs..." &
mkdir ~/.config &
mkdir ~/.dwm &
mkdir ~/.config/Suckless &
mkdir ~/Music &
mkdir ~/Pictures &
mkdir ~/Tempfiles &

sleep 2
echo "mkdirs - done!" &

# cp dotfiles
echo "copy dotfiles..." &
cp .xinitrc ~/ &
cp .bashrc ~/ &
cp .vimrc ~/ &
cp .bash_aliases_void ~/ &
cp autostart.sh ~/.dwm/ &

sleep 1
echo "copy dotfiles - done!" &

# chmod dwm autostart
echo "chmod dwm autostart..." &
chmod +x ~/.dwm/autostart.sh &

sleep 1
echo "chmod dwm autostart - done!" &

# cp suckless dirs
echo "cp suckless dirs..." &
cp -r dwm/ dmenu/ st/ slock/ bar-dwm/ ~/.config/Suckless &

sleep 2
echo "cp suckless dirs - done!" &

# install suckless
echo "install suckless..." &
cd ~/.config/Suckless/dwm/ &
sudo make clean install &

sleep 3

cd ~/.config/Suckless/dmenu/ &
sudo make clean install &

sleep 3

cd ~/.config/Suckless/st/ &
sudo make clean install &

sleep 3

cd ~/.config/Suckless/slock/ &
sudo make clean install &

sleep 3
echo "install suckless - done!" &

# chmod bar
echo "chmod bar-dwm..." &
chmod +x ~/.config/Suckless/bar-dwm/bar_dwm.sh &

sleep 1
echo "chmod bar-dwm - done!" &

# cp & chmod dmenu scripts
echo "cp dmenuscripts & chmod..." &
sudo cp sverigesradio quit /usr/local/bin/ &

sleep 1

sudo chmod +x /usr/local/bin/sverigesradio &
sudo chmod +x /usr/local/bin/quit &

sleep 2
echo "cp dmenuscripts - done!" &

sleep 1

echo "all done!"
