#!/bin/sh
set -e

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install fish
brew install fish

echo $(which fish) >> /etc/shell
sudo chsh -s $(which fish)
sudo chsh -s $(which fish) $(whoami)

fish macos/brew.fish
fish macos/font.fish
fish macos/gpg.fish
fish macos/omf.fish
