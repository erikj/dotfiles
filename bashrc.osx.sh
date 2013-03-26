
# MacPorts
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# node / npm

if [ -d ~/node_modules/.bin ] ; then
  export PATH=~/node_modules/.bin:$PATH
fi

export EDITOR="subl --wait"
export SVN_EDITOR="subl --wait"

alias gmail='open https://mail.google.com/'
alias weather="open http://www.wunderground.com/cgi-bin/findweather/getForecast?query=80301"
alias m='mate'
alias s='subl'
alias jsc='/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc'

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
