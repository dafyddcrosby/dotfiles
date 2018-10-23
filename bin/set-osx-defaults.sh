#!/bin/sh
# Set OS X defaults
set -x

# Set the timezone; see `systemsetup -listtimezones` for other values
systemsetup -settimezone "America/Edmonton" > /dev/null

# Empty Trash securely by default
defaults write com.apple.finder EmptyTrashSecurely -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# View scrollbars when hovering
defaults write -g NSOverlayScrollerShowOnMouseOver -bool true

# Set Safari’s home page to `about:blank` for faster loading
defaults write com.apple.Safari HomePage -string "about:blank"

# Enable Safari’s debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Finder: show all filename extensions
defaults write -g AppleShowAllExtensions -bool true

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Show icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Disable “natural” (Lion-style) scrolling
defaults write -g com.apple.swipescrolldirection -bool false

# Disable the dashboard, because it is stupid.
defaults write com.apple.dashboard mcx-disabled -boolean YES

# Disable Firefox Crash reporter
defaults write org.mozilla.crashreporter submitReport -int 0

defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 5

defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerTapGesture -int 2
defaults write com.apple.driver.AppleMultitouchTrackpad TrackpadThreeFingerTapGesture -int 2

defaults write com.apple.lookup '{ "lookupEnabled" = { "suggestionsEnabled" = 0 ;} ;}'
