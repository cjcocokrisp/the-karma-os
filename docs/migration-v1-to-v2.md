## v1 to v2 Migration Guide

This guide includes a migration guide from v1 of The Karma OS to v2.

### Package Updates

Below is a list of packages and how they changed. If data for any of these is not in the user's
home directory they must be packed up.

#### Now installed by Nix:

- Discord
- Zen Browser (Installed via flatpak now so you will lose data T.T)
- Steam
- RetroArch
- Nvim
- Vim
- Btop
- Tmux
- Tailscale
- Fastfetch
- Spotify
- OBS Studio
- Prism Launcher
- VS Code
- go
- git

#### Things that have been replaced:

- Nautilus -> Dolphin
- Waybar, Rofi, Mako, Eww -> Dux Module Shell
- greetd + tuigreet -> ly

#### Removed All Together:

- ES-DE
- Gamescope
- GTK Icon Theming

### Delete All Flatpaks

Delete all your flatpaks with:

```bash
flatpak uninstall --all
```

!!! WARNING: you will lose all the data for these apps so do any backups beforehand!!! !!!

### Copy New Configs

All the new configs need to be copied into `~/.config`. It is recommended to do this in a TTY
before logging in for the first time.

These include:

- `the-karma-os/dotfiles/kitty/`
- `the-karma-os/dotfiles/hypr/`
- `the-karma-os/dotfiles/dms/`
- `the-karma-os/dotfiles/fastfetch/`
- `the-karma-os/dotfiles/.zshrc/`
- `the-karma-os/dotfiles/.p10k.zsh/`

### Set Up DMS

Some DMS settings need to be configured these include the following:

- Set time to 12 hour format
- Reinstall plugins with `dms plugins restore ~/.config/dms/plugins.lock.json`
- Readd the Dexcom widget to the bar 
- Apply QT and GTK settings with the option
- Set wallpaper directory to either locations of the image repo
- Set profile picture on DMS

### Nix Installations

1. Copy the repo to your home directory by default it is in `/usr/share/the-karma-os`
2. Make a shell with home-manager with nix-shell -p home-manager
3. Go into the repo in your home directory to the path `the-karma-os/nix`
4. Run `make` to install everything
5. You will see a command output that contains something for GPUs, run that command so the gpu will work with steam
6. You will need to sign out and sign back in to be able to see everything but it should work like normal