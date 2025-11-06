# Environment variables
export EDITOR="/usr/bin/vim"
export BASH_SILENCE_DEPRECATION_WARNING=1
export GPG_TTY=$(tty)

# Prompt
export PS1="\w$ "
export CLICOLOR="YES"
export LSCOLORS="exfxcxdxbxegedabagacad"
# bash-completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
# Autocomplete suggestion cycling
bind TAB:menu-complete

# Export tokens in .secrets file.
source $HOME/.secrets

# Aliases
alias ll='ls -ahlF'
alias la='ls -A'
alias l='ls -CF'
alias vim='vi'
alias pprint='python -m json.tool'
alias roll='jot -r 1'
alias dk='docker'
alias secret='openssl rand -hex' 
# Pip will use python3 pip (Homebrew)
alias pip='pip3'

# deno install
export PATH="${HOME}/.deno/bin:$PATH"

