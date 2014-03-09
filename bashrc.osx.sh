# shared OSX bash config

# node / npm

if [ -d ~/node_modules/.bin ] ; then
  export PATH=~/node_modules/.bin:$PATH
fi

export EDITOR="subl --wait"
export SVN_EDITOR="subl --wait"

alias m='mate'
alias s='subl'
alias sp='subl *.sublime-project'

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
alias czith='cd ~/Dropbox/NCAR/zith'
alias cweb='cd ~/Dropbox/NCAR/web'

# dev workflow
alias h='heroku'
alias deploy='git push heroku master'
alias restart='touch tmp/restart.txt'
