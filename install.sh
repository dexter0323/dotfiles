#!/usr/bin/env bash

echo "Dotfiles installation started..."

ln -s -f "${CODESPACE_DOTFILES}/gitconfig.codespace" ~/.gitconfig
ln -s -f "${CODESPACE_DOTFILES}/zshrc" ~/.zshrc
ln -s -f "${CODESPACE_DOTFILES}/.config/starship.toml" ~/starship.toml

echo "Installing fonts..."
sudo apt-get -y install fonts-firacode

echo "Setting up starship..."
sh -c "$(curl -fsSL https://starship.rs/install.sh)" -- --yes

echo "Dotfiles installation finished..."