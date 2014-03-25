# ~/.bashrc, kepler.eol.ucar.edu

# Source common user definitions
if [ -f ~/bashrc.common.sh ]; then
  . ~/bashrc.common.sh
fi

export EVENT_NOKQUEUE='1'

set -o emacs

# LOCAL COMMAND LINE STUFF

alias mz='mysql -u root zith9'
alias mmz='mysql -u zarf -p`cat ~/.my.merlot.zarf.passwd` -h merlot zith9b'
alias mcz='mysql -u ruby -p`cat ~/.my.ctm-dev.ruby.passwd` -h ctm-dev zith9b'

rvm_env="/usr/local/rvm/scripts/rvm"

[[ -s $rvm_env ]] && source $rvm_env  # load RVM into a shell session.

# git stuff

if [ -f /Users/ej/bin/git-completion.bash ] ; then
  source /Users/ej/bin/git-completion.bash
fi

PS1='$PWD$(__git_ps1 " (%s)")\n[\u@\h] '

PATH="/usr/local/heroku/bin:$PATH"

NPM_GLOBAL_BIN='/usr/local/share/npm/bin'

if [ -d $NPM_GLOBAL_BIN ] ; then
  PATH=$NPM_GLOBAL_BIN:$PATH
fi

PATH=$PATH:/usr/local/rvm/bin # Add RVM to PATH for scripting
