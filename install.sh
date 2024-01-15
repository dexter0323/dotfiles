#!/usr/bin/env bash

echo "Dotfiles installation started..."
CODESPACE_DOTFILES=$(cd "$(dirname "$0")" && pwd)

echo $CODESPACE_DOTFILES

ln -s -f "${CODESPACE_DOTFILES}/gitconfig.codespace" ~/.gitconfig
ln -s -f "${CODESPACE_DOTFILES}/zshrc.codespace" ~/.zshrc
ln -s -f "${CODESPACE_DOTFILES}/.config/starship.toml" ~/starship.toml

echo "Installing fonts..."
sudo apt-get -y install fonts-firacode

echo "Setting up starship..."
sh -c "$(curl -fsSL https://starship.rs/install.sh)" -- --yes

echo "Dotfiles installation finished..."