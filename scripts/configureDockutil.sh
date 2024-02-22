#!/bin/bash

# Clear the Dock
dockutil --remove all --no-restart /Users/avfx/Library/Preferences/com.apple.dock.plist

# Set Dock Items
dockutil --add '/Applications/Safari.app' --label 'Safari' --no-restart /Users/avfx/Library/Preferences/com.apple.dock.plist
dockutil --add '/Applications/Google Chrome.app' --label 'Google Chrome' --position 2 --no-restart /Users/avfx/Library/Preferences/com.apple.dock.plist
dockutil --add '/Applications/Microsoft Word.app' --label 'Microsoft Word' --position 3 --no-restart /Users/avfx/Library/Preferences/com.apple.dock.plist
dockutil --add '/Applications/Microsoft Excel.app' --label 'Microsoft Excel' --position 4 --no-restart /Users/avfx/Library/Preferences/com.apple.dock.plist
dockutil --add '/Applications/Microsoft PowerPoint.app' --label 'Microsoft PowerPoint' --position 5 --no-restart /Users/avfx/Library/Preferences/com.apple.dock.plist
# dockutil --add '/Applications/OBS.app' --label 'OBS' --position 6 --no-restart /Users/avfx/Library/Preferences/com.apple.dock.plist
dockutil --add '/Applications/PlaybackPro Plus X  IA - 4.0.5.app' --label 'PlaybackPro Plus X IA' --position 7 --no-restart /Users/avfx/Library/Preferences/com.apple.dock.plist
dockutil --add '/Applications/PlaybackPro Plus X USB - 4.0.5.app' --label 'PlaybackPro Plus X USB' --position 8 --no-restart /Users/avfx/Library/Preferences/com.apple.dock.plist
dockutil --add '/Applications/HandBrake.app' --label 'HandBrake' --position 9 --no-restart /Users/avfx/Library/Preferences/com.apple.dock.plist
dockutil --add '/Applications/zoom.us.app' --label 'Zoom' --position 10 --no-restart /Users/avfx/Library/Preferences/com.apple.dock.plist

# Restart the Dock
killall Dock