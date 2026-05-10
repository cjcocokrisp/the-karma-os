#!/bin/bash

set -ouex pipefail

# Install and configure Hyprland
dnf copr enable -y solopasha/hyprland
dnf5 install -y hyprland \
  greetd \
  greetd-selinux \
  tuigreet \
  tuned \
  tuned-ppd \
  kitty \
  waybar \
  hyprpolkitagent \
  nautilus \
  pavucontrol \
  alsa-sof-firmware \
  alsa-utils \
  blueman \
  NetworkManager-wifi \
  iwl* \
  nm-connection-editor-desktop \
  gvfs \
  gvfs-mtp \
  hyprlock \
  hyprshot \
  hyprpaper

# Enable and configure greetd
mkdir -p /etc/greetd
cp /usr/share/the-karma-os/dotfiles/greetd/config.toml /etc/greetd/config.toml
systemctl enable greetd
systemctl set-default graphical.target
useradd -M greeter

# TODO:: Need to figure out what to do with polkit
