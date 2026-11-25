#!/bin/bash

FONTCONFIG_FILE=$(nix-build --no-out-link '<nixpkgs>' -A fontconfig.out)/etc/fonts/fonts.conf discord
