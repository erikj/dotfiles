# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# enable bash completion in interactive shells
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

if [ -d ~/bin ] ; then
    PATH=~/bin:$PATH
fi

PATH=/sbin:/usr/sbin:$PATH
PATH=/opt/local/bin:$PATH
PATH=/usr/local/mysql/bin/:$PATH
PATH=$PATH:/usr/local/git/bin

PATH=/usr/local/bin:$PATH
PS1='$PWD\n[\u@\h]: '

export EDITOR="mate -w"
export CVSEDITOR="mate -w"
export SVN_EDITOR="mate -w"

export EVENT_NOKQUEUE='1'

set -o emacs

# NETWORK STUFF

alias moleculus='ssh molecule@molecul.us'
alias db1='ssh erikj@db.zeitbyte.com'
alias web1='ssh erikj@www.zeitbyte.com'
alias www='ssh erikj@www.zeitbyte.com'
alias qa='ssh erikj@qa.zeitbyte.com'

# LOCAL COMMAND LINE STUFF

alias l='ls -F'
alias l1='ls -F1'
alias ll='ls -Fl'
alias lh='ls -Flh'
alias ..='cd ..'
alias rm='rm -v'
alias mv='mv -v'
alias cp='cp -v'
alias du1='du -d 0 -h'

# ruby stuff

alias rss='ruby script/server'

# python

alias p='/opt/local/bin/python2.4'

alias creference='cd ~/Documents/Reference\ Docs'

# alias cpleasant='cd ~/Projects/123/pleasant_app'
# alias chiphop='cd ~/Projects/HipHopDB/hiphopdb/trunk'
# alias cwordburst='cd ~/Projects/Wordburst.net/wordburst'
alias czeitbyte='cd ~/Projects/zeitbyte/'
