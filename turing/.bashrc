# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -d ~/bin ] ; then
    PATH=~/bin:$PATH
fi

if [ -d ~/android-sdk-mac_86/tools ] ; then
    PATH=~/android-sdk-mac_86/tools:$PATH
fi

if [ -d /usr/local/bin ] ; then
    PATH=/usr/local/bin:$PATH
fi

if [ -d ~/jakarta-jmeter-2.3.4/bin ] ; then
    PATH=~/jakarta-jmeter-2.3.4/bin:$PATH
fi

PATH=/sbin:/usr/sbin:$PATH
PATH=/opt/local/bin:/opt/local/sbin:$PATH
PATH=/usr/local/mysql/bin/:$PATH
PATH=/opt/local/lib/postgresql83/bin/:$PATH
PATH=$PATH:/usr/local/git/bin

PATH=/usr/local/bin:$PATH
PATH=$PATH:/usr/local/mongodb/bin


export EDITOR="mate -w"
export CVSEDITOR="mate -w"
export SVN_EDITOR="mate -w"

export EVENT_NOKQUEUE='1'

set -o emacs

# NETWORK STUFF

alias moleculus='ssh molecule@molecul.us'
alias db1='ssh erikj@db.zeitbyte.com'
alias web1='ssh erikj@www.zeitbyte.com'
alias www='ssh erikj@www.zeitbyte.com'
alias qa='ssh erikj@qa.zeitbyte.com'

# LOCAL COMMAND LINE STUFF

alias l='ls -F'
alias l1='ls -F1'
alias ll='ls -Fl'
alias lh='ls -Flh'
alias ..='cd ..'
alias rm='rm -v'
alias mv='mv -v'
alias cp='cp -v'
alias du1='du -d 0 -h'


alias startmysql="sudo launchctl load -w /Library/LaunchDaemons/com.mysql.mysqld.plist"
alias stopmysql="sudo launchctl unload -w /Library/LaunchDaemons/com.mysql.mysqld.plist"

alias restartmysql="sudo launchctl unload -w /Library/LaunchDaemons/com.mysql.mysqld.plist && sudo launchctl load -w /Library/LaunchDaemons/com.mysql.mysqld.plist "

# python

alias p='/usr/local/bin/python2.4'

alias creference='cd ~/Documents/Reference'

alias czeitbyte='cd ~/Projects/zeitbyte/'
alias zvn='cd ~/Projects/zeitbyte/svn/'

export PATH=$PATH:/opt/local/Library/Frameworks/Python.framework/Versions/2.4/bin/

export ANDROID_SDK=/usr/local/android_sdk/

export HISTSIZE=10000

# RVM stuff

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

# rvm stuff#rvm use 1.8.7-p334

# EC2 STUFF

# Setup Amazon EC2 Command-Line Tools
export EC2_HOME=/opt/local/ec2-api-tools
export PATH=$PATH:$EC2_HOME/bin
export EC2_PRIVATE_KEY='~/.ec2/pk-WFDFABWPWDMQCG5U6BIYY3M666BYM76T.pem'
export EC2_CERT='~/.ec2/cert-WFDFABWPWDMQCG5U6BIYY3M666BYM76T.pem'
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/

# git stuff

if [ -f /usr/local/git/contrib/completion/git-completion.bash ] ; then
  source /usr/local/git/contrib/completion/git-completion.bash
fi

PS1='$PWD$(__git_ps1 " (%s)")\n[\u@\h] '