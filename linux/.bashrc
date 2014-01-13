# Source common user definitions
if [ -f ~/bashrc.common.sh ]; then
  . ~/bashrc.common.sh
fi

if [ -f ~/bin/git-completion.bash ] ; then
  source ~/bin/git-completion.bash
fi

if [ -f ~/bin/git-prompt.sh ] ; then
  source ~/bin/git-prompt.sh
  PS1='$PWD$(__git_ps1 " (%s)")\n[\u@\h] '
else
  PS1='$PWD\n[\u@\h]: '
fi
