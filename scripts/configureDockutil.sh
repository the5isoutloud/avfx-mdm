#!/bin/bash

# Clear the Dock
dockutil --remove all --allhomes --no-restart

# Set Dock Items
dockutil --add '/Applications/Safari.app' --label 'Safari' --allhomes --no-restart /Users/avfx/Library/Preferences/com.apple.dock.plist
dockutil --add '/Applications/Google Chrome.app' --label 'Google Chrome' --position 2 --allhomes --no-restart /Users/avfx/Library/Preferences/com.apple.dock.plist
dockutil --add '/Applications/Microsoft Word.app' --label 'Microsoft Word' --position 3 --allhomes --no-restart /Users/avfx/Library/Preferences/com.apple.dock.plist
dockutil --add '/Applications/Microsoft Excel.app' --label 'Microsoft Excel' --position 4 --allhomes --no-restart /Users/avfx/Library/Preferences/com.apple.dock.plist
dockutil --add '/Applications/Microsoft PowerPoint.app' --label 'Microsoft PowerPoint' --position 5 --allhomes --no-restart /Users/avfx/Library/Preferences/com.apple.dock.plist
# dockutil --add '/Applications/OBS.app' --label 'OBS' --position 6 --allhomes --no-restart /Users/avfx/Library/Preferences/com.apple.dock.plist
dockutil --add '/Applications/PlaybackPro Plus X  IA - 4.0.5.app' --label 'PlaybackPro Plus X IA' --position 7 --allhomes --no-restart /Users/avfx/Library/Preferences/com.apple.dock.plist
dockutil --add '/Applications/PlaybackPro Plus X USB - 4.0.5.app' --label 'PlaybackPro Plus X USB' --position 8 --allhomes --no-restart /Users/avfx/Library/Preferences/com.apple.dock.plist
dockutil --add '/Applications/HandBrake.app' --label 'HandBrake' --position 9 --allhomes --no-restart /Users/avfx/Library/Preferences/com.apple.dock.plist
dockutil --add '/Applications/zoom.us.app' --label 'Zoom' --position 10 --allhomes --no-restart /Users/avfx/Library/Preferences/com.apple.dock.plist

# Restart the Dock
killall Dock