#!/usr/bin/bash
set -e

apt-get update
apt-get install -y git fish
bash index.sh
