# ~/.bashrc, macbook air

# Source common user definitions
if [ -f ~/bashrc.common.sh ]; then
  . ~/bashrc.common.sh
fi

if [ -d /usr/local/mysql/bin ] ; then
  PATH=/usr/local/mysql/bin:$PATH
fi

export EVENT_NOKQUEUE='1'

set -o emacs

# LOCAL COMMAND LINE STUFF

alias mz='mysql -u root zith9'
alias mmz='mysql -u zarf -p`cat ~/.my.merlot.zarf.passwd` -h merlot zith9b'
alias mcz='mysql -u ruby -p`cat ~/.my.ctm-dev.ruby.passwd` -h ctm-dev zith9b'
alias writer='/Applications/iA\ Writer.app/Contents/MacOS/iA\ Writer'

# alias =''

# RVM

rvm_env="/usr/local/rvm/scripts/rvm"

[[ -s $rvm_env ]] && source $rvm_env  # load RVM into a shell session.

# git stuff

# https://github.com/git/git/blob/master/contrib/completion/git-completion.bash

git_completion="/usr/local/etc/bash_completion.d/git-completion.bash"

if [ -f $git_completion ] ; then
  . $git_completion
fi

# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh

git_prompt="/usr/local/etc/bash_completion.d/git-prompt.sh"

if [ -f $git_prompt ] ; then
  . $git_prompt
  PS1='$PWD$(__git_ps1 " (%s)")\n[\u@\h] '
fi

export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:/usr/local/mysql/lib:

PATH=$PATH:/usr/local/rvm/bin # Add RVM to PATH for scripting

PATH="/usr/local/heroku/bin:$PATH"
