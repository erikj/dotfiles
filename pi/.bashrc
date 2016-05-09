# Source common user definitions
if [ -f ~/bashrc.common.sh ]; then
  . ~/bashrc.common.sh
fi

# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh

git_prompt="/usr/local/etc/bash_completion.d/git-prompt.sh"

if [ -f $git_prompt ] ; then
  . $git_prompt
  if [[ $(type -t __git_ps1) = 'function' ]] ; then
    PS1='$PWD$(__git_ps1 " (%s)")\n[\u@\h] '
  fi
fi
