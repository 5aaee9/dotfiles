#!/usr/bin/bash
set -e
yum install -y git fish

if [ -f "index.sh" ];
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
