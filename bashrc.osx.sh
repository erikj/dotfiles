# shared OSX bash config

# node / npm

if [ -d ~/node_modules/.bin ] ; then
  export PATH=~/node_modules/.bin:$PATH
fi

bash_completion=$(brew --prefix)/etc/bash_completion

if [ -f $bash_completion ]; then
  . $bash_completion
fi

vagrant_completion=' /opt/vagrant/embedded/gems/gems/*/contrib/bash/completion.sh'

if [ -f $vagrant_completion ]; then
  . $vagrant_completion
fi

# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh

git_prompt="/usr/local/etc/bash_completion.d/git-prompt.sh"

if [ -f $git_prompt ] ; then
  . $git_prompt
  if [[ $(type -t __git_ps1) = 'function' ]] ; then
    PS1='$PWD$(__git_ps1 " (%s)")\n[\u@\h] '
  fi
fi

export EDITOR="subl --wait"
export SVN_EDITOR="subl --wait"

export VAGRANT_USE_NFS=true

alias m='mate'
alias s='subl'
alias sp='subl *.sublime-project'

alias bu='brew update'
alias bo='brew outdated'
alias bubo='brew update && brew outdated'

alias eject='diskutil eject'

alias cdropbox='cd ~/Dropbox'
alias cprojects='cd ~/Dropbox/projects'
alias cdotfiles='cd ~/Dropbox/projects/dotfiles'
alias cnotes='cd ~/Dropbox/NCAR/notes'
alias cmodels='cd ~/Dropbox/NCAR/catalog_models'
alias ccatalog='cd ~/Dropbox/NCAR/catalog_ui'
alias cmaps='cd ~/Dropbox/NCAR/catalog-maps'
alias ce2='cd ~/Dropbox/NCAR/catalog-maps'
alias cnagios='cd ~/Dropbox/NCAR/catalog-nagios'
alias cdvagrant='cd ~/Dropbox/NCAR/catalog-vagrant'
alias czith='cd ~/Dropbox/NCAR/zith'
alias cweb='cd ~/Dropbox/NCAR/web'
alias cplanner='cd ~/Dropbox/NCAR/mission-planner'
alias cosm='cd ~/Dropbox/NCAR/osm-mapnik'
alias cingest='cd ~/Dropbox/NCAR/catalog-ingest'
alias craf='cd ~/Dropbox/NCAR/raf'

# dev workflow
alias h='heroku'
alias deploy='git push heroku master'
alias restart='touch tmp/restart.txt'
alias v='vagrant'
alias vu='vagrant up'
alias vs='vagrant ssh'
alias vh='vagrant halt'

alias f='fig'
alias d='docker'
alias dc='docker-compose'
alias dm='docker-machine'
alias dme='docker-machine env'

#
# bash completion for aliases
#

if [[ $(type -t _vagrant) = 'function' ]]; then
  complete -F _vagrant v
fi

if [[ $(type -t __git_complete) = 'function' ]]; then
  __git_complete g __git_main
fi

if [[ $(type -t _docker) = 'function' ]]; then
  complete -F _docker d
fi

if [[ $(type -t _docker_compose) = 'function' ]]; then
  complete -F _docker_compose f
  complete -F _docker_compose dc
fi

if [[ $(type -t _docker_machine) = 'function' ]]; then
  complete -F _docker_machine dm
fi
