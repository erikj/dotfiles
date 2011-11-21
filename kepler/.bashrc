# ~/.bashrc, kepler.eol.ucar.edu

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source common user definitions
if [ -f ~/bashrc.common.sh ]; then
	. ~/bashrc.common.sh
fi

# Source common osx-paltform user definitions
if [ -f ~/bashrc.osx.sh ]; then
  . ~/bashrc.osx.sh
fi

if [ -d ~/bin ] ; then
    PATH=~/bin:$PATH
fi

PATH=/sbin:/usr/sbin:$PATH

if [ -d /usr/local/bin ] ; then
    PATH=/usr/local/bin:$PATH
fi

if [ -d /usr/local/git/bin ] ; then
   PATH=/usr/local/git/bin:$PATH
fi

export EVENT_NOKQUEUE='1'

set -o emacs

# LOCAL COMMAND LINE STUFF

alias ccatalog='cd /Users/ej/UCAR/git/catalog_ui'
alias mz='mysql -u root zith9'
alias mmz='mysql -u zarf -p`cat ~/.my.merlot.zarf.passwd` -h merlot zith9b'
alias mcz='mysql -u ruby -p`cat ~/.my.ctm-dev.ruby.passwd` -h ctm-dev zith9b'

# RVM stuff

[[ -s "/Users/ej/.rvm/scripts/rvm" ]] && source "/Users/ej/.rvm/scripts/rvm"  # This loads RVM into a shell session.

# git stuff

if [ -f /Users/ej/bin/git-completion.bash ] ; then
  source /Users/ej/bin/git-completion.bash
fi

PS1='$PWD$(__git_ps1 " (%s)")\n[\u@\h] '
