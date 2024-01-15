export GPG_TTY=$(tty)
export STARSHIP_CONFIG=$HOME/.config/starship.toml

alias merge="git pull origin master --no-edit"
alias rebase="git pull --rebase origin master"
alias reset1="git reset --soft HEAD~1"
alias reset2="git reset --soft HEAD~1"
alias pushf="git push --force-with-lease"
alias ci="git commit -a -m"
alias t="task"

eval "$(starship init zsh)"