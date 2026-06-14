## The Karma OS Changelog

All manual updates will be documented in this file.

Semantic versions are used for versioning. In each version the number
represents what is described below:

- X: Major version, will be bumped when there is a drastic change
in config. For example, major styling or new apps that run system stuff like status bars etc.
- Y: Minor version, will be bumped when I add a new
program or something into the image that is not super
major.
- Z: Fixes, will be bumped when a fix needs to happen

### v1.4.0 - Development Patch

Date: June 14th, 2026

#### Contents
- Add gparted as a package for working with disk partitioning
- Added a new directory `toolbox/` with container images that can be used with toolbox for development
  - This can be accessed by going to where the repo is cloned on the system to build and then use locally
  - A container for Go development was added

### v1.3.0 - Splash Screen Patch

Date: May 28th, 2026

#### Contents
- Add plymouth splash screen
- Make systemd silent so it doesn't bleed through tuigreet + greetd
- Add window rules for bitwarden
- Add keybind for fullscreen
- Added the following packages
  - plymouth

### v1.2.0 - Controller Patch

Date: May 26th, 2026

#### Contents
- Added the following packages to use my leverless
  - lsusb
  - kernel-modules-extra

### v1.1.0 - Birthday Patch

Date: May 21st, 2026

Quick updates and some new packages for my 22nd birthday!

#### Contents
- Added keybinds and config for grouping in Hyprland
- Added some window rules for pop uppy things for better looks
- Added the following packages
  - tailscale
  - proton up
  - google emoji fonts

### v1.0.0 - Summer Fragrance

Date: May 16th, 2025

The first release of the image! This has been an idea in my head for
sometime now and I'm happy that I finally got around to completing it.
Switching to Hyprland has been such an awesome move and I can't wait to
use it more. I'm calling this theme summer fragrance based on [this](https://www.youtube.com/watch?v=v578L0gGcIU&themeRefresh=1)
music track.

#### Contents
- Hyprland is used for desktop environment
- Preconfigured dot files for Hyprland
- Pywal automatically generates a color scheme from predefined background image
- Brew is provided to install packages locally easier if its not baked into the image
- The following are installed for system related stuff
  - Status Bar - Waybar
  - Notifications - Mako
  - App Launcher - Rofi
  - Lock - Hyprlock
  - Screenshot tool - Hyprshot
  - Bluetooth applet - blueman-applet
  - Network applet - nm-applet
  - Widget Dashboard - eww
  - Terminal - kitty
  - Wallpaper tool - Hyprpaper
- The following CLI based programs are installed:
  - nvim
  - btop
  - tmux
- The below apps that I use are included:
  - Steam
  - Discord
  - Zen Browser
  - Spotify
  - Retroarch
  - EmulationStation DE
  - Bitwarden Password Manager
  - Visual Studio Code
- Set up instructions on how to download and get started using this image along with
information on using with multimonitor & ultrawide
