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


[[ -s "/usr/local/rvm/scripts/rvm" ]] && source "/usr/local/rvm/scripts/rvm"  # This loads RVM into a shell session.

export EDITOR='emacs'
