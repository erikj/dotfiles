# my preferred defaults for osx
# inspired by: https://github.com/mathiasbynens/dotfiles/blob/master/.osx
# resource: http://secrets.blacktree.com/

# Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Automatically open a new Finder window when a volume is mounted
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true

# Disable window animations
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# Disable menu bar transparency
defaults write -g AppleEnableMenuBarTransparency -bool false

# Expand save panel by default
defaults write -g NSNavPanelExpandedStateForSaveMode -bool true

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Expand save panel by default
defaults write -g NSNavPanelExpandedStateForSaveMode -bool true

# Reset Launchpad
[ -e ~/Library/Application\ Support/Dock/*.db ] && rm ~/Library/Application\ Support/Dock/*.db

# iTunes dark list / mode
# http://blog.alphanegative.com/2011/03/how-to-get-a-dark-itunes-list-in-itunes-10-for-os-x/
defaults write com.apple.iTunes high-contrast-mode-enable -bool TRUE
