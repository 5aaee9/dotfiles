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
  neteasemusic

# init miniconda
conda init

# Install sync plugin
code --install-extension Shan.code-settings-sync
