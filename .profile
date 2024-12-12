#!/bin/bash
# Go initialization
export GOPATH=$HOME/go
GOPATHBIN=$GOPATH/bin

# Rust (Cargo) directory
CARGOBIN=$HOME/.cargo/bin

PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:.:$CARGOBIN:$GOPATHBIN
export PATH HOME TERM

export PS1="[\u@\h \W]$ "
export HISTFILE=$HOME/.sh_history
export MANPAGER=/usr/bin/less
export PAGER=/usr/bin/less
export EDITOR=/usr/bin/vim

export TZ=America/Edmonton
export LC_CTYPE=en_US.UTF-8

# OpenBSD contributor values
export CVSROOT=anoncvs@anoncvs.ca.openbsd.org:/cvs
export CVS_RSH=/usr/bin/ssh

# Debian package maintainer values
export DEBEMAIL=dtcrsby@gmail.com
export DEBFULLNAME="David Crosby"

# aliases
alias c='cd'
alias e='emacsclient --create-frame --tty'
alias ec='emacsclient -n'
alias g='git'
alias gg='git grep'
alias ggv='git grep -Ovim'
alias slsync='sl commit -m sync'
alias l='ls'
alias s='ssh'
alias v='vim'

# alias ls="/usr/local/bin/colorls -FG" # OpenBSD
# alias battery='sysctl hw.sensors.acpibat0' # OpenBSD
alias gcp='git com ; git pum'
alias wget='wget -c'

alias df='df -h'
alias ll='ls -al'
