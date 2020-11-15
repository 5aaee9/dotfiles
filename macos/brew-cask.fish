#!/usr/local/bin/fish

brew cask install \
  miniconda \
  visual-studio-code \
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
  neteasemusic \
  mumble \
  discord \
  steam \
  balenaetcher \
  multimc \
  ezip \
  mark-text \
  iina \
  mounty \
  rcloneosx \
  insomnia \
  wireshark \
  notion \
  dockey \
  dropbox \
  keyboardcleantool \
  gcc-arm-embedded \
  minecraft \
  bitwarden \
  jd-gui \
  calibre \
  anydesk \
  google-chrome \
  robo-3t \
  android-file-transfer \
  android-platform-tools \
  istat-menus

# init miniconda
conda init

# Install openjdk
brew tap AdoptOpenJDK/openjdk

# Install openjdk 8
brew cask install adoptopenjdk/openjdk/adoptopenjdk8
