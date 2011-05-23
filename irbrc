# history
require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 2000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"

# set prompt to '>> '
IRB.conf[:PROMPT_MODE] = :SIMPLE

# pretty print
require 'pp'
