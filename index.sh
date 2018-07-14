#!/usr/bin/bash
set -e

if [ -d "~/.nvm" ]; then
    git clone https://github.com/creationix/nvm.git ~/.nvm
fi

if [ ! -f "~/.config/fish/config.fish" ]; then
    mkdir -p ~/.config/fish
    cp .config.fish ~/.config/fish/config.fish
fi

if [ -d "~/.config/fish/nvm-wrapper" ]; then
    pushd ~/.config/fish
    git clone git://github.com/passcod/nvm-fish-wrapper.git nvm-wrapper
    popd
fi

fish index.fish
