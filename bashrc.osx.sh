
# MacPorts
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# node / npm

if [ -d ~/node_modules/.bin ] ; then
  export PATH=~/node_modules/.bin:$PATH
fi

export EDITOR="mate -w"
export CVSEDITOR="mate -w"
export SVN_EDITOR="mate -w"

alias gmail='open https://mail.google.com/'
alias weather="open http://www.wunderground.com/cgi-bin/findweather/getForecast?query=80301"
alias m='mate'
alias s='subl'
alias jsc='/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc'

alias cdropbox='cd ~/Dropbox'
alias cprojects='cd ~/Dropbox/projects'
alias cdotfiles='cd ~/Dropbox/projects/dotfiles'
alias cnotes='cd ~/Dropbox/UCAR/notes'
alias cmodels='cd ~/Dropbox/UCAR/catalog_models'
alias ccatalog='cd ~/Dropbox/UCAR/catalog_ui'
alias ce2='cd ~/Dropbox/UCAR/catalog-maps'
alias czith='cd ~/Dropbox/UCAR/zith'
