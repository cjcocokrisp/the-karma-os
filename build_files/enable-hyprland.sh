#!/bin/bash

set -ouex pipefail

# Enable and configure greetd
mkdir -p /etc/greetd
cp /usr/share/the-karma-os/dotfiles/greetd/config.toml /etc/greetd/config.toml
systemctl enable greetd
systemctl set-default graphical.target
useradd -M greeter

# Apply no bleed for systemd output on startup
mkdir /usr/lib/systemd/system/greetd.service.d
cp /usr/share/the-karma-os/dotfiles/greetd/00-nobleed.conf /usr/lib/systemd/system/greetd.service.d/00-nobleed.

# TODO: Need to figure out what to do with polkit
