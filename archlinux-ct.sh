#!/bin/bash

set -e

# Load basic usable env from Proxmox CE ArchLinux Image

# Enable network
systemctl enable --now systemd-networkd
systemctl enable --now systemd-resolved

# Init Keyring
pacman-key --init
pacman-key --populate archlinux

# Change locale
echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
locale-gen

# Init software mirror
echo "Server = http://mirror.rackspace.com/archlinux/\$repo/os/\$arch" > /etc/pacman.d/mirrorlist

# ArchLinux Keyring
yes | pacman -Sy archlinux-keyring

# Upgrade packages
yes | pacman -Syu
