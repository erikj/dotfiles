# history
require 'irb/ext/save-history'
# completion and auto-indent, http://drnicwilliams.com/2006/10/12/my-irbrc-for-consoleirb/
require 'irb/completion'
IRB.conf[:AUTO_INDENT]=true
IRB.conf[:SAVE_HISTORY] = 2000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"

# set prompt to '>> '
IRB.conf[:PROMPT_MODE] = :SIMPLE

# pretty print
require 'pp'
require 'rubygems'
