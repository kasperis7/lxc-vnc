#!/bin/bash

source /etc/profile

Xvfb :0 -ac -screen 0 1280x720x16 &
sleep 1
x11vnc -nopw -localhost -display :0 &
sleep 1
openbox&
xfce4-panel&
pcmanfm -d --desktop& 

echo "[!] please forward port 5900 to access vnc service."
