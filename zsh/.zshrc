# Set PATH
export PATH="$HOME/bin:$PATH"

# Enable Oh My Zsh plugins
plugins=(zsh-syntax-highlighting zsh-autosuggestions)

# Disable GPG signing for Git commits in Codespaces
if [[ -n "$CODESPACES" ]]; then
    git config --global commit.gpgsign false
else
    git config --global commit.gpgsign true
fi