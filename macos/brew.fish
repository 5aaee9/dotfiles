#!/usr/bin/env fish
set DIR (cd (dirname (status -f)); and pwd) 

# Install packages from brewfile
brew bundle --file $DIR/Brewfile
