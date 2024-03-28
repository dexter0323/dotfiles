#!/bin/bash

# Change to dotfiles directory
cd "$(dirname "$0")" || exit

# Create symbolic links
ln -sf "$(pwd)/zsh/.zshrc" "$HOME/.zshrc"
ln -sf "$(pwd)/git/.gitconfig" "$HOME/.gitconfig"
ln -sf "$(pwd)/starship/starship.toml" "$HOME/.config/starship.toml"

echo "Dotfiles installation complete!"
