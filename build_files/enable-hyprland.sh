#!/bin/bash

set -ouex pipefail

# Enable and configure greetd
mkdir -p /etc/greetd
cp /usr/share/the-karma-os/dotfiles/greetd/config.toml /etc/greetd/config.toml
systemctl enable greetd
systemctl set-default graphical.target
useradd -M greeter

# Apply no bleed for systemd output on startup
cp /usr/share/the-karma-os/dotfiles/greetd/greetd.service /usr/lib/systemd/system/greetd.service

# TODO: Need to figure out what to do with polkit eventually
