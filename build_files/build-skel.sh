#!/bin/bash
# This script builds the skel for new users

# Init dirs
mkdir -p /etc/skel/{Desktop,Documents,Downloads,Music,Pictures,Videos,code}
mkdir -p /etc/skel/.config

# Move wallpapers into pictures
cp /usr/share/the-karma-os/wallpapers/summer-fragrance.jpg /etc/skel/Pictures/wallpaper.jpg
cp /usr/share/the-karma-os/wallpapers/summer-fragrance_ultrawide.jpg /etc/skel/Pictures/wallpaper_ultrawide.jpg

# Copy dotfiles into .config
cp -r /usr/share/the-karma-os/dotfiles/hypr /etc/skel/.config/
cp -r /usr/share/the-karma-os/dotfiles/kitty /etc/skel/.config/
cp -r /usr/share/the-karma-os/dotfiles/mako /etc/skel/.config/
cp -r /usr/share/the-karma-os/dotfiles/rofi /etc/skel/.config/
cp -r /usr/share/the-karma-os/dotfiles/waybar /etc/skel/.config/
cp -r /usr/share/the-karma-os/dotfiles/fastfetch /etc/skel/.config/
cp -r /usr/share/the-karma-os/dotfiles/eww /etc/skel/.config/

# Clone my nvim config
git clone https://github.com/cjcocokrisp/nvim /etc/skel/.config/nvim

# Place vim configs in root of skel
cp /usr/share/the-karma-os/dotfiles/.vimrc /etc/skel/.vimrc
cp -r /usr/share/the-karma-os/dotfiles/.vim /etc/skel/

# Move scripts into skel
cp -r /usr/share/the-karma-os/scripts/ /etc/skel/
chmod -R +x /etc/skel/scripts

# Set up ZSH
sed -i 's/^SHELL=.*/SHELL=\/bin\/zsh/' /etc/default/useradd
git clone https://github.com/ohmyzsh/ohmyzsh.git /etc/skel/.oh-my-zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /etc/skel/.oh-my-zsh/custom/themes/powerlevel10k

cp /usr/share/the-karma-os/dotfiles/.zshrc /etc/skel/.zshrc
cp /usr/share/the-karma-os/dotfiles/.p10k.zsh /etc/skel/.p10k.zsh
