#!/bin/sh
set -e

function onLinux() {
  OS=$(cat /etc/os-release | sed -n "s/^NAME=\"\(.*\)\"/\1/p")
  case "$OS" in
    "Arch Linux ARM"*)
      bash ./alarm.sh
      ;;
    *)
      echo "Not support"
      exit 1
      ;;
  esac
}

case "$OSTYPE" in
  darwin*)
    bash ./macos/install.sh
    fish ./macos/brew.fish
    fish ./macos/brew-cask.fish
    fish ./macos/mas.fish
    ;;
  # msys*)
  linux*)
    onLinux
    ;;
  *)
    echo "System not support"
    exit 1
    ;;
esac
