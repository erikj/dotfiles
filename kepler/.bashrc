# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -d ~/bin ] ; then
    PATH=~/bin:$PATH
fi

PATH=/sbin:/usr/sbin:$PATH

if [ -d /usr/local/bin ] ; then
    PATH=/usr/local/bin:$PATH
fi

# MacPorts Installer addition on 2011-05-18_at_12:02:34: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

export EDITOR="mate -w"
export CVSEDITOR="mate -w"
export SVN_EDITOR="mate -w"

export EVENT_NOKQUEUE='1'

set -o emacs

# NETWORK STUFF

alias moleculus='ssh molecule@molecul.us'

# LOCAL COMMAND LINE STUFF

alias ls='ls -G'
alias l='ls -F'
alias l1='ls -F1'
alias ll='ls -Fl'
alias lh='ls -Flh'
alias ..='cd ..'
alias rm='rm -v'
alias mv='mv -v'
alias cp='cp -v'
alias du1='du -d 0 -h'

alias ccatalog='cd /Users/ej/UCAR/git/catalog_ui'
alias mz='mysql -u root zith9b'
alias mmz='mysql -u zarf -p`cat ~/.my.merlot.zarf.passwd` -h merlot zith9b'
alias mcz='mysql -u ruby -p`cat ~/.my.ctm-dev.ruby.passwd` -h ctm-dev zith9b'

# RVM stuff

[[ -s "/Users/ej/.rvm/scripts/rvm" ]] && source "/Users/ej/.rvm/scripts/rvm"  # This loads RVM into a shell session.

# rvm use 1.8.7-p334

# git stuff

PS1='$PWD\n[\u@\h]: '

if [ -f /Users/ej/bin/git-completion.bash ] ; then
  source /Users/ej/bin/git-completion.bash
fi

PS1='$PWD$(__git_ps1 " (%s)")\n[\u@\h] '
