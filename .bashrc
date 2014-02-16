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

export PS1="[\u@\h \W]$ "
# \a : an ASCII bell character (07)
# \d : the date in "Weekday Month Date" format (e.g., "Tue May 26")
# \D{format} : the format is passed to strftime(3) and the result is inserted into the prompt string; an empty format results in a locale-specific time representation. The braces are required
# \e : an ASCII escape character (033)
# \h : the hostname up to the first '.'
# \H : the hostname
# \j : the number of jobs currently managed by the shell
# \l : the basename of the shell's terminal device name
# \n : newline
# \r : carriage return
# \s : the name of the shell, the basename of $0 (the portion following the final slash)
# \t : the current time in 24-hour HH:MM:SS format
# \T : the current time in 12-hour HH:MM:SS format
# \@ : the current time in 12-hour am/pm format
# \A : the current time in 24-hour HH:MM format
# \u : the username of the current user
# \v : the version of bash (e.g., 2.00)
# \V : the release of bash, version + patch level (e.g., 2.00.0)
# \w : the current working directory, with $HOME abbreviated with a tilde
# \W : the basename of the current working directory, with $HOME abbreviated with a tilde
# \! : the history number of this command
# \# : the command number of this command
# \$ : if the effective UID is 0, a #, otherwise a $

export EDITOR=/usr/bin/vim
export DEBEMAIL=dtcrsby@gmail.com
export DEBFULLNAME=Dafydd Crosby

# Bunch of handy aliases
alias ls='ls --color=auto'
alias df='df -H'
alias wget='wget -c'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias ll='ls -la'
alias empdirs='find . -type d -empty -exec rmdir {} \;'

alias urlheader='curl -I'
alias urlheadergzip='curl -I --compress'

alias netstatports='netstat -tulanp'


if [ -f /etc/bash_completion ]; then
 . /etc/bash_completion
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
