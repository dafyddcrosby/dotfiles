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
  . "$HOME/.profile"
fi

set bell-style visible

export HISTCONTROL=ignoredups

# Bunch of handy aliases
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias empdirs='find . -type d -empty -exec rmdir {} \;'
alias ducks='du -cks * | sort -rn | head'

alias daveops='cd $HOME/src/daveops.net/'

alias itoonz='open -a iTunes.app'

alias usystemctl='systemctl --user'

alias be='bundle exec'

if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

if [ -f ~/.bashrc_local ]; then
  . "$HOME/.bashrc_local"
fi
