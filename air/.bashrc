# ~/.bashrc, macbook air

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source common user definitions
if [ -f ~/bashrc.common.sh ]; then
	. ~/bashrc.common.sh
fi

if [ -d ~/bin ] ; then
    PATH=~/bin:$PATH
fi

PATH=/sbin:/usr/sbin:$PATH

if [ -d /usr/local/bin ] ; then
    PATH=/usr/local/bin:$PATH
fi

if [ -d /usr/local/mysql/bin ] ; then
  PATH=/usr/local/mysql/bin:$PATH
fi

# MacPorts
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

export EDITOR="mate -w"
export CVSEDITOR="mate -w"
export SVN_EDITOR="mate -w"

export EVENT_NOKQUEUE='1'

set -o emacs

# LOCAL COMMAND LINE STUFF

alias ccatalog='cd /Users/molecule/UCAR/catalog_ui'
alias mz='mysql -u root zith9b'
alias mmz='mysql -u zarf -p`cat ~/.my.merlot.zarf.passwd` -h merlot zith9b'
alias mcz='mysql -u ruby -p`cat ~/.my.ctm-dev.ruby.passwd` -h ctm-dev zith9b'
alias writer='/Applications/iA\ Writer.app/Contents/MacOS/iA\ Writer'

alias cprojects='cd /Users/molecule/projects'
alias cdotfiles='cd /Users/molecule/projects/dotfiles'

# alias =''
alias m='mate'

# RVM stuff

[[ -s "/Users/molecule/.rvm/scripts/rvm" ]] && source "/Users/molecule/.rvm/scripts/rvm"  # This loads RVM into a shell session.

# rvm use 1.8.7-p334

# git stuff

if [ -f /usr/local/git/contrib/completion/git-completion.bash  ] ; then
  source /usr/local/git/contrib/completion/git-completion.bash 
fi

PS1='$PWD$(__git_ps1 " (%s)")\n[\u@\h] '

export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:/usr/local/mysql/lib:
