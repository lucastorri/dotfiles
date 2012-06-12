export PATH=$PATH:/usr/local/bin:/usr/local/sbin
# PEP 370 PATH added by PyPM on 2010-11-03 13:44:52.588512
#export PATH=/Users/lucastorri/Library/Python/2.7/bin:$PATH

export CLASSPATH=$CLASSPATH:/usr/local/Cellar/clojure-contrib/1.2.0/clojure-contrib.jar

# bash-completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi
[[ -a "$HOME/.bash-completion" ]] && source $HOME/.bash-completion/*

export LS_OPTIONS='--color=auto'
export CLICOLOR=1
export LSCOLORS='bxgxfxfxcxdxdxhbadbxbx'

PS1="\[\033[0;34m\][\s] \[\033[0;32m\]\u@mac\[\033[0;37;00m\] [\[\033[0;31m\]\w\[\033[0;37;00m\]]\[\033[0;33m\]$\[\033[0;37;00m\] "

alias ..='cd ..'
alias l='ls'
alias ll='ls -halF'
alias grep='grep --color=auto '
up() { LIMIT=$1; P=$PWD; for ((i=1; i <= LIMIT; i++)); do P=$P/..; done; cd $P; }
#rvm lazy instantiation
rvm() { [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"; }

export EDITOR="mvim -f"

export PATH=/Users/lucastorri/Downloads/play-2.0-RC2/:$PATH
