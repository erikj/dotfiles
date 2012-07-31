defaults write com.apple.dock "dashboard-in-overlay" -bool true

# disable local time-machine backups

sudo tmutil disablelocal

# iTunes dark list / mode
# http://blog.alphanegative.com/2011/03/how-to-get-a-dark-itunes-list-in-itunes-10-for-os-x/
defaults write com.apple.iTunes high-contrast-mode-enable -bool TRUE

# Disable window animations
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# Expand save panel by default
defaults write -g NSNavPanelExpandedStateForSaveMode -bool true

# a handy little tweak for the Dock that will cause a pop-up window to
# momentarily appear each time iTunes begins playing a new track
defaults write com.apple.dock itunes-notifications -bool TRUE;killall Dock

# Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
