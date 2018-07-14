#!/usr/bin/bash
set -e
pacman -S git fish

if [ -f "index.sh" ]; then
    # run local
    bash index.sh
else
    # run remote
    git clone https://github.com/Indexyz/dotfiles.git dotfiles
    pushd dotfiles
    bash index.sh
    popd
    rm -rf dotfiles
fi
