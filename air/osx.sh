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

# a handy little tweak for the Dock that will cause a pop-up window to
# momentarily appear each time iTunes begins playing a new track
defaults write com.apple.dock itunes-notifications -bool TRUE;killall Dock

# http://osxdaily.com/2011/09/14/disable-the-internal-screen-on-a-macbook-pro-or-air-in-mac-os-x-10-7-lion/
# To disable the internal screen for OS X Lion based laptops, launch the Terminal and enter the following command:
# sudo nvram boot-args="iog=0x0"

# You’ll need to reboot for changes to take effect, and the internal display will then be completely disabled regardless of whether the Mac is open or closed.
# To undo this, you can go back to the Terminal and enter:
# sudo nvram -d boot-args

# display boot-args:
# nvram boot-args

# boot in verbose mode
# http://osxdaily.com/2007/03/25/always-boot-mac-os-x-in-verbose-mode/
# sudo nvram boot-args="-v"

# concatenate nvram boot-args:
# sudo nvram boot-args="-v iog=0x0"
