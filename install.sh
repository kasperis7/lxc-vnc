#!/bin/bash

apt update

# install xvfb and x11vnc

apt install -y xvfb x11vnc
echo "export DISPLAY=:0" >> /etc/profile

# install minimal graphical interface components

apt install -y openbox obmenu obconf vnc4server xfce4-panel pcmanfm ttf-wqy-microhei dbus-x11 lxterminal gpicview

cp ./.gtkrc-2.0 /root/.gtkrc-2.0

echo "done"
