# shared OSX bash config

# node / npm

if [ -d ~/node_modules/.bin ] ; then
  export PATH=~/node_modules/.bin:$PATH
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
