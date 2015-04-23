PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games:.
export PATH HOME TERM

export CVSROOT=anoncvs@anoncvs.ca.openbsd.org:/cvs
export MANPAGER=/usr/bin/less
export PAGER=/usr/bin/less
export EDITOR=/usr/bin/vim
export DEBEMAIL=dtcrsby@gmail.com
export DEBFULLNAME=David Crosby
export CVS_RSH=/usr/bin/ssh
export TZ=America/Edmonton

# Go initialization
export GOPATH=$HOME/go
export GOROOT=$HOME/goroot
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# One-letter aliases
alias c='cd'
alias e='emacsclient'
alias g='git'
alias l='ls'
alias s='ssh'
alias v='vim'

alias ls="/usr/local/bin/colorls -FG"
alias battery='sysctl hw.sensors.acpibat0'
alias gcp='git com ; git pum'
alias wget='wget -c'

alias df='df -H'

