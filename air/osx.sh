# my preferred defaults for osx
# inspired by: https://github.com/mathiasbynens/dotfiles/blob/master/.osx
# resource: http://secrets.blacktree.com/

# disable spotlight: http://osxdaily.com/2011/12/10/disable-or-enable-spotlight-in-mac-os-x-lion/
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist
sudo mdsutil -i off
# remove spotlight icon
sudo chmod 600 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search
killall SystemUIServer

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

# Disable Desktop, http://www.cultofmac.com/133265/turn-off-your-desktop-os-x-tips/
defaults write com.apple.finder CreateDesktop -bool FALSE;killall Finder

# http://www.defaults-write.com/disable-dashboard-as-a-space-in-mission-control/#.UmxKJJQRRe4
# display dashboard as an overlay, not its own space
defaults write com.apple.dock dashboard-in-overlay -bool true

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

# disable boot chime
# https://discussions.apple.com/thread/3208783?start=120&tstart=0
sudo nvram SystemAudioVolume=%80

# https://discussions.apple.com/message/25051863#25051863
defaults write com.apple.loginwindow PowerButtonSleepsSystem -bool no

# disable putting system to sleep when display sleeps
# https://discussions.apple.com/thread/5559674?start=15&tstart=0

sudo pmset -b sleep 0
sudo pmset -b standby 0
