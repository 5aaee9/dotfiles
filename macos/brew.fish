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
  ansible

cp ../config/config.fish ~/.config/fish/config.fish
cp ../config/starship.toml ~/.config/starship.toml
