#!/bin/zsh

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install fish
brew install fish

fish brew.fish
fish brew-cask.fish
fish mas.fish