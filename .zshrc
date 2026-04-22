if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
  tmux new -s $(awk '{ words[NR] = $0 } END { srand(); for (i=1; i<=3; i++) { idx = int(rand() * NR) + 1; printf tolower("%s%s"), words[idx], (i == 3 ? "" : "-") }; print "" }' /usr/share/dict/words) -c "#{pane_current_path}"
fi

# bindkeys
bindkey -e
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

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
