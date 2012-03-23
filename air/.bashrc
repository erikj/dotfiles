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

alias mz='mysql -u root zith9b'
alias mmz='mysql -u zarf -p`cat ~/.my.merlot.zarf.passwd` -h merlot zith9b'
alias mcz='mysql -u ruby -p`cat ~/.my.ctm-dev.ruby.passwd` -h ctm-dev zith9b'
alias writer='/Applications/iA\ Writer.app/Contents/MacOS/iA\ Writer'

# alias =''

# RVM

rvm_env="/usr/local/rvm/scripts/rvm"

[[ -s $rvm_env ]] && source $rvm_env  # load RVM into a shell session.

# git stuff


git_completion="/Users/molecule/bin/git-completion.bash"

if [ -f $git_completion ] ; then
  . $git_completion
fi

PS1='$PWD$(__git_ps1 " (%s)")\n[\u@\h] '

export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:/usr/local/mysql/lib:
