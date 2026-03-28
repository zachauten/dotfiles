if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
  tmux new -s $(deno run --allow-read get-id.ts) -c "#{pane_current_path}"
fi

bindkey -e

# Environment variables
export EDITOR=$(which nvim)
export BASH_SILENCE_DEPRECATION_WARNING=1
export GPG_TTY=$(tty)
export SHELL=$(which zsh)
export PROMPT="%B%F{green}%~$%f%b "

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
alias tm='tmux'
alias tm-rm='tmux kill-ses -t'


# Added by Antigravity
export PATH="/Users/zauten/.antigravity/antigravity/bin:$PATH"
