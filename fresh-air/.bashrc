# ~/.bashrc, macbook air

# Source common user definitions
if [ -f ~/bashrc.common.sh ]; then
  . ~/bashrc.common.sh
fi

export EVENT_NOKQUEUE='1'

set -o emacs

# LOCAL COMMAND LINE STUFF

alias mz='mysql -u root zith9'
alias writer='/Applications/iA\ Writer.app/Contents/MacOS/iA\ Writer'

# alias place='holder'

export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:/usr/local/mysql/lib:

# vagrant
# http://docs.vagrantup.com/v2/other/environmental-variables.html
export VAGRANT_DOTFILE_PATH='.vagrant-fresh-air'
