# history
require 'irb/ext/save-history'
# completion and auto-indent, http://drnicwilliams.com/2006/10/12/my-irbrc-for-consoleirb/
require 'irb/completion'
IRB.conf[:AUTO_INDENT]=true
IRB.conf[:SAVE_HISTORY] = 2000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"

# http://ruby-doc.org/docs/ProgrammingRuby/html/irb.html
# http://tagaholic.me/2009/05/29/exploring-how-to-configure-irb.html

IRB.conf[:PROMPT][:CUSTOM] = { # name of prompt mode
  # normal prompt
  :PROMPT_I => "#{(defined? RUBY_ENGINE) ? RUBY_ENGINE : 'ruby' }-#{RUBY_VERSION}-p#{RUBY_PATCHLEVEL} >> ",
  :PROMPT_S => "",     # prompt for continuing strings
  :PROMPT_C => "?>",   # prompt for continuing statement
  :PROMPT_N => ".. ",  # prompt when indenting code
  :RETURN => "=> %s\n" # format to return value
}

IRB.conf[:PROMPT_MODE] = :CUSTOM

# pretty print
require 'pp'
require 'rubygems'
