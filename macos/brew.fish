#!/usr/local/bin/fish

brew install \
  nodejs \
  yarn \
  fish \
  git \
  starship \
  curl \
  wget \
  jq \
  rclone \
  xz \
  htop \
  nload \
  neofetch \
  docker-compose \
  tmux \
  go \
  e2fsprogs \
  libsodium \
  jq \
  ffmpeg \
  portaudio \
  ansible \
  lame \
  rustup-init \
  open-ocd \
  dex2jar \
  apktool \
  axel \
  you-get \
  mysql-client \
  gnu-sed \
  packer \
  qemu \
  ffsend

# SSHPass for ansible to init server keys :-)
brew install http://git.io/sshpass.rb

cp ../config/config.fish ~/.config/fish/config.fish
cp ../config/starship.toml ~/.config/starship.toml
