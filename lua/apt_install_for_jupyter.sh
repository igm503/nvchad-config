#!/bin/bash
set -e

sudo apt update
sudo apt install -y imagemagick

QUARTO_VERSION=$(curl -s https://api.github.com/repos/quarto-dev/quarto-cli/releases/latest | grep -oP '"tag_name": "v\K[^"]+')
wget "https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.deb"
sudo dpkg -i "quarto-${QUARTO_VERSION}-linux-amd64.deb"
rm "quarto-${QUARTO_VERSION}-linux-amd64.deb"

echo "Installed:"
quarto --version
convert --version | head -1
