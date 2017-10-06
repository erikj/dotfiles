
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# aliases and PATHs

PATH=/sbin:/usr/sbin:$PATH

if [ -d ~/bin ] ; then
    PATH=~/bin:$PATH
fi

if [ -d /usr/local/bin ] ; then
    PATH=/usr/local/bin:$PATH
fi

if [ -d /usr/local/sbin ] ; then
    PATH=/usr/local/sbin:$PATH
fi

if [ -d /usr/local/git/bin ] ; then
   PATH=/usr/local/git/bin:$PATH
fi

export GIT_MERGE_AUTOEDIT=no
export DOCKERCOMPOSE_UID=`id -u`
export DOCKERCOMPOSE_GID=`id -g`

alias l='ls'
alias l1='ls -1'
alias ll='ls -la'
alias lh='ls -lh'
alias ..='cd ..'
alias rm='rm -v'
alias mv='mv -v'
alias cp='cp -v'
alias du1='du -d 0 -h'
alias dt='date && time'

alias a='ack'
alias c='cat'
alias e='emacs'
alias g='git'
alias be='bundle exec'
# networking

PS1='$PWD\n[\u@\h] '
export TZ='MST7MDT'

case `uname` in
Linux)
  # GNU / Linux
  # echo "Linux match found"
  alias ls='ls -F --color' # add some color, trailing dir and link indicators
  ;;
*)
  # BSD / -derived, eg. Mac OSX, etc.
  # echo "BSD"
  # Source common osx-platform user definitions

  if [ -f ~/bashrc.osx.sh ]; then
    . ~/bashrc.osx.sh
  fi

  alias ls='ls -FG' # add some color, trailing dir and link indicators
  ;;
esac
