#!/bin/sh

case "$OSTYPE" in
  darwin*)
    bash ./macos/install.sh
    ;;
  # msys*)
  # linux*)
  *)
    echo "System not support"
    exit 1
    ;;
esac
