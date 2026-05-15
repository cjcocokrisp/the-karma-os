#!/bin/bash

set -ouex pipefail

# Install packages for the system
# Enable copr repos
dnf copr enable -y solopasha/hyprland
dnf copr enable -y sneexy/zen-browser
dnf copr enable -y varlad/eww
dnf copr enable -y che/nerd-fonts

# Set up RPM fusion & terra repo
dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
dnf install -y --nogpgcheck --repofrompath 'terra,https://repos.fyralabs.com/terra$releasever' terra-release

#  Upgrade all packages
dnf upgrade

# Install packages
dnf5 install -y hyprland \
  greetd \
  greetd-selinux \
  tuigreet \
  tuned \
  tuned-ppd \
  kitty \
  waybar \
  eww \
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
  hyprpaper \
  nautilus \
  rofi \
  vim \
  nvim \
  discord \
  steam \
  gamescope \
  zen-browser \
  pipx \
  network-manager-applet \
  blueman-applet \
  timg \
  btop \
  nerd-fonts \
  adobe-source-code-pro-fonts \
  sourcecodepro-nerd-fonts \
  pavucontrol \
  ImageMagick \
  breeze-cursor-theme

# remove terra repo because it was causing ISO build errors due to no GPG key
rm /etc/yum.repos.d/terra.repo

pipx install --global pywal16

# need gtk theme
# gtk icons
# need to set up zsh still
# need to do flatpaks still
# need to also do spotify and emulation
