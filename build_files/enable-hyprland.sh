#!/bin/bash

set -ouex pipefail

#systemctl disable gdm.service

# Enable and configure ly
cp /usr/share/the-karma-os/dotfiles/ly/config.ini /etc/ly/
systemctl enable ly@tty2.service
systemctl set-default graphical.target

# TODO: Need to figure out what to do with polkit eventually