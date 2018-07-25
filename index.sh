#!/usr/bin/bash
set -e

if [ ! -d "~/.nvm" ]; then
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
fi

if [ ! -f "~/.config/fish/config.fish" ]; then
    mkdir -p ~/.config/fish
    cp .config.fish ~/.config/fish/config.fish
fi

if [ ! -d "~/.config/fish/nvm-wrapper" ]; then
    pushd ~/.config/fish
    git clone git://github.com/passcod/nvm-fish-wrapper.git nvm-wrapper
    popd
fi

fish index.fish
