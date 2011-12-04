# aliases

case `uname` in
Linux)
  # GNU / Linux
  # echo "Linux match found"
  alias ls='ls -F --color' # add some color, trailing dir and link indicators
  ;;
*)
  # BSD / -derived, eg. Mac OSX, etc.
  # echo "BSD"
  alias ls='ls -FG' # add some color, trailing dir and link indicators
  ;;
esac

alias l='ls'
alias l1='ls -1'
alias ll='ls -la'
alias lh='ls -lh'
alias ..='cd ..'
alias rm='rm -v'
alias mv='mv -v'
alias cp='cp -v'
alias du1='du -d 0 -h'

alias a='ack'
alias c='cat'
alias e='emacs'
alias g='git'
alias p='python'
alias r='ruby'
alias t='touch'
# networking

alias moleculus='ssh molecule@molecul.us'

PS1='$PWD\n[\u@\h] '
