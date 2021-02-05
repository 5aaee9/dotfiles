#!/usr/local/bin/fish

# System Preferences > Dock > Automatically hide and show the Dock:
defaults write com.apple.dock autohide -bool true

# System Preferences > Dock > Size:
defaults write com.apple.dock tilesize -int 54

# System Preferences > Dock > Magnification:
defaults write com.apple.dock magnification -bool true

# System Preferences > Dock > Size (magnified):
defaults write com.apple.dock largesize -int 70

# Finder > View > As List
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Finder > View > Show Path Bar
defaults write com.apple.finder ShowPathbar -bool true

# Finder > Preferences > Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder > Preferences > Show wraning before changing an extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Kill affected apps
for app in "Dock" "Finder"
  killall "$app" > /dev/null 2>&1
end
