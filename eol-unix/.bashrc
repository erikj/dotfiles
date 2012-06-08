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
PS1='$PWD\n[\u@\h]: '

alias ccatalog='cd /usr/local/catalog/catalog_ui'
alias ce2='cd /usr/local/catalog/catalog-maps'
alias cdc3='cd /net/web/catalog/html/dc3_2012'

# This loads RVM into a shell session.
[[ -s "/usr/local/rvm/scripts/rvm" ]] && source "/usr/local/rvm/scripts/rvm"

export EDITOR='emacs'

# set umask for group write
umask 0002
