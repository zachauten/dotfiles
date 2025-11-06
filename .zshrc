# Environment variables
export EDITOR="/usr/bin/vim"
export BASH_SILENCE_DEPRECATION_WARNING=1
export GPG_TTY=$(tty)

# Export tokens in .secrets file.
touch $HOME/.secrets
source $HOME/.secrets

# Aliases
alias ll='ls -ahlF'
alias la='ls -A'
alias l='ls -CF'
alias vim='vi'
alias pprint='python -m json.tool'
alias roll='jot -r 1'
alias dk='docker'
alias dkc='docker compose'
alias vi='nvim'
alias vim='nvim'

