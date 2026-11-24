#!/bin/bash

set -ouex pipefail

# Install packages for the system
# Enable copr repos
dnf copr enable -y lionheartp/Hyprland
dnf copr enable -y avengemedia/dms
dnf copr enable -y che/nerd-fonts

#  Upgrade all packages
# dnf -y upgrade

# Install packages
dnf5 install -y \
  hyprland \
  hyprland-guiutils \
  ly \
  tuned \
  tuned-ppd \
  kitty \
  hyprpolkitagent \
  dolphin \
  alsa-sof-firmware \
  alsa-utils \
  NetworkManager-wifi \
  iwl* \
  gvfs \
  gvfs-mtp \
  hyprshot \
  hyprpaper \
  timg \
  nerd-fonts \
  adobe-source-code-pro-fonts \
  breeze-cursor-theme \
  breeze-icon-theme \
  zsh \
  zsh-autosuggestions \
  zsh-syntax-highlighting \
  wl-clipboard \
  flatpak \
  google-noto-color-emoji-fonts \
  lsusb \
  kernel-modules-extra \
  dms \
  upower \
  qt6ct \
  nix \
  nix-daemon \
  make \
  ruby # needed for brew

# Turn on services for power management
systemctl enable tuned
systemctl enable upower