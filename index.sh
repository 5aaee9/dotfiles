#!/usr/bin/bash
set -e

git clone https://github.com/creationix/nvm.git ~/.nvm
mkdir -p ~/.config/fish
cp .config.fish ~/.config/fish/config.fish

pushd ~/.config/fish
git clone git://github.com/passcod/nvm-fish-wrapper.git nvm-wrapper
popd

fish -c "nvm install 10"
