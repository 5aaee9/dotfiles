#!/usr/bin/bash
set -e

yum install -y git curl
yum install -y https://download.opensuse.org/repositories/shells:/fish:/release:/2/CentOS_7/x86_64/fish-2.7.1-1.2.x86_64.rpm

curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
fish -c "fisher Indexyz/dotfiles"
chsh -s /usr/bin/fish
