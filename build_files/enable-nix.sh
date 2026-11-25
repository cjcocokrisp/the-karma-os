#!/bin/bash

set -ouex pipefail

mkdir /var/nix
mkdir -p /var/nix/store

# Copy mount for /var/nix to /nix so nix can write there
# if not /nix would be read only and not work write
cp /usr/share/the-karma-os/build_files/nix.mount /etc/systemd/system/

systemctl enable nix.mount
systemctl enable nix-daemon