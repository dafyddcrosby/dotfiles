PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games:.
export PATH HOME TERM

export QT_X11_NO_MITSHM=1

export PS1="[\u@\h \W]$ "
export HISTFILE=/home/dave/.sh_history
export CVSROOT=anoncvs@anoncvs.ca.openbsd.org:/cvs
export MANPAGER=/usr/bin/less
export PAGER=/usr/bin/less
export EDITOR=/usr/bin/vim
export DEBEMAIL=dtcrsby@gmail.com
export DEBFULLNAME="David Crosby"
export CVS_RSH=/usr/bin/ssh
export TZ=America/Edmonton
export LC_CTYPE=en_US.UTF-8

export PATH=$PATH:/home/dave/.cargo/bin

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
alias l='ls'
alias s='ssh'
alias v='vim'

alias ls="/usr/local/bin/colorls -FG"
alias battery='sysctl hw.sensors.acpibat0'
alias gcp='git com ; git pum'
alias wget='wget -c'

alias df='df -H'
alias ll='ls -al'
