#!/bin/bash
set -e

sudo apt update
sudo apt install -y imagemagick luarocks lua5.1 liblua5.1-dev build-essential libclang-18-dev

QUARTO_VERSION=$(curl -s https://api.github.com/repos/quarto-dev/quarto-cli/releases/latest | grep -oP '"tag_name": "v\K[^"]+')
wget "https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.deb"
sudo dpkg -i "quarto-${QUARTO_VERSION}-linux-amd64.deb"
rm "quarto-${QUARTO_VERSION}-linux-amd64.deb"

sudo luarocks --lua-version=5.1 install jsregexp

# install rust
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
# source ~/.cargo/env
cargo install tree-sitter-cli

echo "Installed:"
quarto --version
convert --version | head -1
luarocks --lua-version=5.1 show jsregexp | head -3
tree-sitter --version
