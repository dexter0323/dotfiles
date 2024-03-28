#!/bin/bash

# Change to dotfiles directory
cd "$(dirname "$0")" || exit

# Create symbolic links
ln -sf "$(pwd)/zsh/.zshrc" "$HOME/.zshrc"
ln -sf "$(pwd)/git/.gitconfig" "$HOME/.gitconfig"
ln -sf "$(pwd)/starship/starship.toml" "$HOME/.config/starship.toml"

# Install zsh-syntax-highlighting
echo "Installing zsh-syntax-highlighting..."
sudo apt update
sudo apt install zsh-syntax-highlighting
echo "zsh-syntax-highlighting installation complete!"

# Install Starship
echo "Installing Starship..."
curl -fsSL https://starship.rs/install.sh | bash
echo "Starship installation complete!"

# Install Fira Code font
echo "Installing Fira Code font..."
wget -O firacode.zip https://github.com/tonsky/FiraCode/releases/download/5.2/Fira_Code_v5.2.zip
unzip -o firacode.zip -d firacode
mkdir -p ~/.local/share/fonts
cp firacode/*.ttf ~/.local/share/fonts
fc-cache -f -v
echo "Fira Code font installation complete!"

echo "Dotfiles installation complete!"
