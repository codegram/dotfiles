#Fix fonth smoothing
defaults -currentHost write -globalDomain AppleFontSmoothing -int 0

#Disable window animations
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

#Disable webkit homepage
defaults write org.webkit.nightly.WebKit StartPageDisabled -bool true

#Use current directory as default search scope in Finder
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

#Show Path bar in Finder
defaults write com.apple.finder ShowPathbar -bool true

#Show Status bar in Finder
defaults write com.apple.finder ShowStatusBar -bool true

#Enable AirDrop over Ethernet and on unsupported Macs running Lion
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true

#Disable disk image verification
defaults write com.apple.frameworks.diskimages skip-verify -bool true &&
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true &&
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

#Disable Safari’s thumbnail cache for History and Top Sites
defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2

#Enable Safari’s debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

#Disable the Ping sidebar in iTunes
defaults write com.apple.iTunes disablePingSidebar -bool true

#Add a context menu item for showing the Web Inspector in web views
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

#Show the ~/Library folder
chflags nohidden ~/Library

#Disable ping dropdowns
defaults write com.apple.iTunes hide-ping-dropdown true
