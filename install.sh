#!/bin/sh
set -e

export NONINTERACTIVE="yes"

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install fish

sudo bash -c 'echo $(which fish) >> /etc/shells'
sudo chsh -s $(which fish)
sudo chsh -s $(which fish) $(whoami)

if [ ! -d ~/.config/fish/conf.d/ ]; then
    mkdir -p  ~/.config/fish/conf.d/
fi

sudo bash macos/patch-sudo.bash
cp -r macos/fish/* ~/.config/fish/conf.d/
fish macos/brew.fish
fish macos/gpg.fish
fish macos/java.fish
fish macos/git.fish
fish macos/settings.fish
fish macos/omf.fish
fish macos/secure.fish

fish macos/fixs/qemu/permission.fish
