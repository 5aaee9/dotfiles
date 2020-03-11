#!/usr/local/bin/fish

brew cask install \
  miniconda \
  visual-studio-code \
  keeweb \
  vivaldi \
  iterm2 \
  jetbrains-toolbox \
  github \
  hiddenbar \
  motrix \
  snipaste \
  upic \
  docker \
  utools \
  switchhosts \
  imazing \
  telegram \
  slack \
  neteasemusic \
  mumble \
  discord \
  steam \
  istat-menus \
  balenaetcher \
  multimc \
  ezip \
  mark-text \
  iina \
  mounty \
  rcloneosx \
  insomnia

# init miniconda
conda init

# Install sync plugin
code --install-extension Shan.code-settings-sync

# Install openjdk
brew tap AdoptOpenJDK/openjdk

# Install openjdk 8
brew cask install adoptopenjdk8
