#!/bin/sh

function onLinux() {
  OS=$(cat /etc/os-release | sed -n "s/^NAME=\"\(.*\)\"/\1/p")
  case "$OS" in
    Arch Linux ARM*)
      bash ./alarm.sh
      ;;
    *)
      echo "Not support"
      exit 1
}

case "$OSTYPE" in
  darwin*)
    bash ./macos/install.sh
    ;;
  # msys*)
  linux*)
    onLinux()
  *)
    echo "System not support"
    exit 1
    ;;
esac
