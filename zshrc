autoload -U compinit && compinit
autoload -U colors && colors

fpath=(~/.zsh/functions/* $fpath)

#autoload -U ~/.zsh/functions/*(:t)

# load our own completion functions
fpath=(~/.zsh/completion $fpath)

# keep TONS of history
HISTFILE=~/.zsh_history
HISTSIZE=4096
SAVEHIST=1000
REPORTTIME=10

setopt APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt INC_APPEND_HISTORY SHARE_HISTORY

# automatically enter directories without cd
setopt auto_cd

# use vim as an editor
export EDITOR=vim

# aliases
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi

# vi mode
#bindkey -v
#bindkey "^F" vi-cmd-mode
#bindkey jj vi-cmd-mode

# use incremental search
#bindkey "^R" history-incremental-search-backward

# add some readline keys back
#bindkey "^A" beginning-of-line
#bindkey "^E" end-of-line

# handy keybindings
#bindkey "^P" history-search-backward
#bindkey "^Y" accept-and-hold
#bindkey "^N" insert-last-word
#bindkey -s "^T" "^[Isudo ^[A" # "t" for "toughguy"

# expand functions in the prompt
setopt prompt_subst

# prompt
export PS1='[${SSH_CONNECTION+"%n@%m:"}%~] '

# look for ey config in project dirs
export EYRC=./.eyrc

# automatically pushd
setopt auto_pushd
export dirstacksize=5

# awesome cd movements from zshkit
setopt AUTOCD
setopt AUTOPUSHD PUSHDMINUS PUSHDSILENT PUSHDTOHOME
setopt cdablevars

# Try to correct command line spelling
setopt CORRECT CORRECT_ALL

# Enable extended globbing
setopt EXTENDED_GLOB
