# Go initialization
export GOPATH=$HOME/go
PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:.:/home/dave/.cargo/bin

export PATH HOME TERM

# X Windows hack for Anki
export QT_X11_NO_MITSHM=1

export PS1="[\u@\h \W]$ "
export HISTFILE=/home/dave/.sh_history
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

# Go initialization
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

if [[ "$SHELL" == "/bin/ksh" ]]
then
	set -o emacs
fi

# One-letter aliases
alias c='cd'
alias e='emacsclient'
alias g='git'
alias gg='git grep'
alias ggv='git grep -Ovim'
alias l='ls'
alias s='ssh'
alias v='vim'

# alias ls="/usr/local/bin/colorls -FG" # OpenBSD
# alias battery='sysctl hw.sensors.acpibat0' # OpenBSD
alias gcp='git com ; git pum'
alias wget='wget -c'

alias df='df -h'
alias ll='ls -al'
