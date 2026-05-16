#!/bin/bash

# TODO: have this automatically run at some point

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install -y --noninteractive flathub org.freedesktop.Platform//24.08
flatpak install -y --noninteractive flathub com.bitwarden.desktop
flatpak install -y --noninteractive flathub com.spotify.Client
flatpak install -y --noninteractive flathub com.visualstudio.code
