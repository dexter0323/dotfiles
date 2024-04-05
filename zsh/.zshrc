# Set PATH
export PATH="$HOME/bin:$PATH"
export PATH=$PATH:$HOME/minio-binaries/

# Set aliases
## Handy short cuts
alias t='task'
alias g='git'
alias h='history'
## Colorize the ls output ##
alias ls='ls --color=auto'
## Use a long listing format ##
alias ll='ls -la'
## Show hidden files ##
alias l.='ls -d .* --color=auto'

# Enable Oh My Zsh plugins
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

# Disable GPG signing for Git commits in Codespaces
if [[ -n "$CODESPACES" ]]; then
    git config --global commit.gpgsign false
    git config --local commit.gpgsign false
else
    git config --global commit.gpgsign true
    git config --local commit.gpgsign true
fi