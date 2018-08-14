#!/usr/bin/bash
set -e

yes | pacman -S curl fish git
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
fisher Indexyz/dotfiles
chsh -s /usr/bin/fish
