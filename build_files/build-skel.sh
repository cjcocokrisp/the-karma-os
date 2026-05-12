#!/bin/bash
# This script builds the skel for new users

# Init dirs
mkdir -p /etc/skel/{Desktop,Documents,Downloads,Music,Pictures,Videos}
mkdir -p /etc/skel/.config

# Move wallpapers into pictures
cp /usr/share/the-karma-os/wallpapers/summer-fragrance* /etc/skel/Pictures

# Copy dotfiles into .config
cp -r /usr/share/the-karma-os/dotfiles/hypr /etc/skel/.config/
cp -r /usr/share/the-karma-os/dotfiles/kitty /etc/skel/.config/
cp -r /usr/share/the-karma-os/dotfiles/mako /etc/skel/.config/
cp -r /usr/share/the-karma-os/dotfiles/rofi /etc/skel/.config/
cp -r /usr/share/the-karma-os/dotfiles/waybar /etc/skel/.config/
cp -r /usr/share/the-karma-os/dotfiles/fastfetch /etc/skel/.config/
