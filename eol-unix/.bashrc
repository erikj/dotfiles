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

# This loads RVM into a shell session.
if [ `uname -n` = 'sferic.eol.ucar.edu' ]; then
  export rvm_path=/h/eol/ej/.rvm
  [[ -s "/h/eol/ej/.rvm/scripts/rvm" ]] && source "/h/eol/ej/.rvm/scripts/rvm"
else
  [[ -s "/usr/local/rvm/scripts/rvm" ]] && source "/usr/local/rvm/scripts/rvm" 
fi





export EDITOR='emacs'
