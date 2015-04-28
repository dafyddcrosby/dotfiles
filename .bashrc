#!/bin/sh

# Are we an interactive shell?
if [ "$PS1" ]; then
    case $TERM in
    xterm*)
        PROMPT_COMMAND='printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/~}"'
        ;;
    screen)
        PROMPT_COMMAND='printf "\033]0;%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/~}"'
        ;;
    esac
    # Turn on checkwinsize
    shopt -s checkwinsize
fi

if [ -f ~/.profile ]; then
 . ~/.profile
fi

# Bunch of handy aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias empdirs='find . -type d -empty -exec rmdir {} \;'
alias ducks='du -cks * | sort -rn | head'

alias ec='emacsclient'
alias es='emacs --daemon'

alias netstatports='netstat -tulanp'

alias daveops='cd ~/src/daveops.net/posts'

if [ -f /etc/bash_completion ]; then
 . /etc/bash_completion
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
