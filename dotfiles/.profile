# bash-completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi
[[ -a "$HOME/.bash-completion" ]] && source $HOME/.bash-completion/*

export LS_OPTIONS='--color=auto'
export CLICOLOR=1
export LSCOLORS='bxgxfxfxcxdxdxhbadbxbx'

PS1="\[\033[0;34m\][\s] \[\033[0;32m\]\u@nokia\[\033[0;37;00m\] [\[\033[0;31m\]\w\[\033[0;37;00m\]]\[\033[0;33m\]$\[\033[0;37;00m\] "

alias ..='cd ..'
alias l='ls'
alias ll='ls -halF'
alias grep='grep --color'
alias e="subl"
alias en="subl -n"
up() { LIMIT=$1; P=$PWD; for ((i=1; i <= LIMIT; i++)); do P=$P/..; done; cd $P; }


export EDITOR='subl -w'

alias proxy-nokia="export http_proxy=http://nokes.nokia.com:8080; export https_proxy=http://nokes.nokia.com:8080"
alias proxy-clear="unset http_proxy https_proxy"

export BYOBU_PREFIX=$(brew --prefix)

source ~/.pcur