# Environment variables
export EDITOR="/usr/bin/vim"
export BASH_SILENCE_DEPRECATION_WARNING=1
export GPG_TTY=$(tty)
#export BOOK_STORE_DIR=$HOME/.config/book

# Prompt
export PS1="\w$ "
export CLICOLOR="YES"
export LSCOLORS="exfxcxdxbxegedabagacad"
# bash-completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
# Autocomplete suggestion cycling
bind TAB:menu-complete

# Homebrew
export HOMEBREW_BUNDLE_FILE="$HOME/.Brewfile"
#export HOMEBREW_VERBOSE=0
#export HOMEBREW_BINTRAY_USER="zachauten"
export HOMEBREW_NO_ANALYTICS=1

# Export tokens in .tokens file.
source $HOME/.tokens

# Aliases
alias ll='ls -ahlF'
alias la='ls -A'
alias l='ls -CF'
alias vim='vi'
alias pprint='python -m json.tool'
alias roll='jot -r 1'
# Pip will use python3 pip (Homebrew)
#alias pip='pip3'
alias dk='docker'

# Path
# PYTHON
export PYTHONPATH=/usr/local/bin/
export PATH="/usr/local/opt/python@3.7/bin:$PATH"
# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:$PATH
# Homebrew path
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
# deno install
export PATH="/Users/zach/.deno/bin:$PATH"

export PATH="/usr/local/opt/node@16/bin:$PATH"
