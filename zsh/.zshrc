# Custom aliases
alias ll='ls -alF'
alias gs='git status'
alias gc='git commit'

# Set PATH
export PATH="$HOME/bin:$PATH"

# Enable syntax highlighting
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Load Starship prompt
eval "$(starship init zsh)"
