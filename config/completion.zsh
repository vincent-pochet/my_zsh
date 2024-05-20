export HISTFILE=~/.histfile
export HISTFILESIZE=10000
export HISTSIZE=500
export SAVEHIST=10000
export HISTCONTROL=erasedups:ignoredups:ignorespace

setopt SHARE_HISTORY

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' menu select
