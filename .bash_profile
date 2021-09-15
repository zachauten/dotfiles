# Environment variables
export EDITOR="/usr/bin/vim"
export BASH_SILENCE_DEPRECATION_WARNING=1
export GPG_TTY=$(tty)

# PYTHONPATH
export PYTHONPATH=/usr/local/bin/

# Homebrew
#export HOMEBREW_VERBOSE=0
export HOMEBREW_BINTRAY_USER="zachauten"
export HOMEBREW_NO_ANALYTICS=1
# brew sbin
export PATH="/usr/local/sbin:$PATH"

# Export tokens in .tokens file.
source $HOME/.tokens

# Prompt
export PS1="\w$ "

# Color labeling
export CLICOLOR="YES"

# LSCOLORS
export LSCOLORS="exfxcxdxbxegedabagacad"

# bash-completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Autocomplete suggestion cycling
bind TAB:menu-complete

# Aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias vim='vi'
alias pprint='python -m json.tool'
alias roll='jot -r 1'
# Pip will use python3 pip (Homebrew)
alias pip='pip3'

# Path
# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:$PATH
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

