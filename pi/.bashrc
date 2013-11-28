# Source common user definitions
if [ -f ~/bashrc.common.sh ]; then
  . ~/bashrc.common.sh
fi

# add git branch to prompt
PS1='$PWD$(__git_ps1 " (%s)")\n[\u@\h] '