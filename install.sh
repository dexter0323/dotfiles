#!/bin/bash

# Change to dotfiles directory
cd "$(dirname "$0")" || exit

# Create symbolic links
ln -sf "$(pwd)/zsh/.zshrc" "$HOME/.zshrc"
ln -sf "$(pwd)/git/.gitconfig" "$HOME/.gitconfig"

# Install zsh-syntax-highlighting
echo "Installing zsh-syntax-highlighting..."
sudo apt update
sudo apt install zsh-syntax-highlighting
echo "zsh-syntax-highlighting installation complete!"

# Install FiraCode Nerd Font
echo "Installing FiraCode Nerd Font..."
# Download and extract the font archive
mkdir -p ~/.local/share/fonts
wget -O /tmp/firacode.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/0xProto.zip
unzip -o /tmp/firacode.zip -d ~/.local/share/fonts/
rm -f /tmp/firacode.zip
# Update font cache
fc-cache -f -v
echo "FiraCode Nerd Font installation complete!"

# Install Oh My Zsh
echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Oh My Zsh installation complete!"

# Install auto-suggestions plugin
echo "Installing auto-suggestions plugin for Oh My Zsh..."
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

# Clone zsh-syntax-highlighting plugin
echo "Cloning zsh-syntax-highlighting plugin..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

source "$HOME/.zshrc"

echo "Dotfiles installation complete!"
