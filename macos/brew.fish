#!/usr/bin/env fish
set DIR (cd (dirname (status -f)); and pwd)

# Install packages from brewfile
brew bundle --file $DIR/Brewfile

# SwitchResX
# Name:   Roger Nelson
# Serial: 48685C06DC4A01F1
