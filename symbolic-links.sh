#!/bin/bash

# some "automation" for my suckless setup

echo "create symbolic links..."
ln -s /media/1TB-TWO/Music ~/Music/mp3 &
ln -s /media/1TB-ONE/Nextcloud/Wallpapers ~/Pictures/Wallpapers &
ln -s /media/1TB-ONE/Nextcloud/Screenshots ~/Pictures/Screenshots &
ln -s /media/1TB-ONE/Nextcloud/ ~/Nextcloud &
ln -s /media/1TB-ONE/Nextcloud/Tech/Scripts ~/Scripts &

sleep 1

echo "links to mp3, Wallpapers, Screenshots, Nextcloud, Scripts = done!"
