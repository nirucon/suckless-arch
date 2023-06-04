#!/bin/bash

sleep 1

xautolock -time 10 -locker slock &

sleep 2

dunst &

sleep 7

nextcloud --background
