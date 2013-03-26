# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source common user definitions
if [ -f ~/bashrc.common.sh ]; then
	. ~/bashrc.common.sh
fi

# User specific aliases and functions

alias ccatalog='cd /usr/local/catalog/catalog_ui'
alias cmaps='cd /usr/local/catalog/catalog-maps'
alias ce2='cd /usr/local/catalog/catalog-maps'
alias cdc3='cd /net/web/catalog/html/dc3_2012'
alias cnagios='cd /usr/local/catalog/catalog-nagios'
alias cweb='cd ~/svn/web'

# This loads RVM into a shell session.
[[ -s "/usr/local/rvm/scripts/rvm" ]] && source "/usr/local/rvm/scripts/rvm"

export EDITOR='emacs'

# set umask for group write
umask 0002

# https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
if [ -f ~/bin/git-completion.bash ] ; then
  source ~/bin/git-completion.bash
  PS1='$PWD$(__git_ps1 " (%s)")\n[\u@\h] '
else
  PS1='$PWD\n[\u@\h]: '
fi

PATH=$PATH:/usr/local/rvm/bin # Add RVM to PATH for scripting