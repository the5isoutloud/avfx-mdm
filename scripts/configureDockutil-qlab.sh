#!/bin/bash
# check if dockutil is installed, install if it's not.
dockutil="/usr/local/bin/dockutil"
if [[ -x $dockutil ]]; then
    echo "dockutil found, no need to install"
else
    echo "dockutil could not be found, installing..."
    curl -L --silent --output /tmp/dockutil.pkg "https://github.com/kcrawford/dockutil/releases/download/3.0.2/dockutil-3.0.2.pkg" >/dev/null
    # install dockutil
    installer -pkg "/tmp/dockutil.pkg" -target /
fi
# vars to use script and set current logged in user dock
killall="/usr/bin/killall"
loggedInUser=$( ls -l /dev/console | awk '{print $3}' )
LoggedInUserHome="/Users/$loggedInUser"
UserPlist=$LoggedInUserHome/Library/Preferences/com.apple.dock.plist
################################################################################
# Use Dockutil to Modify Logged-In User's Dock
################################################################################
echo "------------------------------------------------------------------------"
echo "Current logged-in user: $loggedInUser"
echo "------------------------------------------------------------------------"
echo "Removing all Items from the Logged-In User's Dock..."
sudo -u $loggedInUser $dockutil --remove all --no-restart $UserPlist
echo "Creating New Dock..."
sudo -u $loggedInUser $dockutil --remove all --no-restart $UserPlist
sudo -u $loggedInUser $dockutil --add '/Applications/Safari.app' --label 'Safari' --no-restart $UserPlist
sudo -u $loggedInUser $dockutil --add '/Applications/Google Chrome.app' --label 'Google Chrome' --position 2 --no-restart $UserPlist
sudo -u $loggedInUser $dockutil --add '/Applications/Microsoft Word.app' --label 'Microsoft Word' --position 3 --no-restart $UserPlist
sudo -u $loggedInUser $dockutil --add '/Applications/Microsoft Excel.app' --label 'Microsoft Excel' --position 4 --no-restart $UserPlist
sudo -u $loggedInUser $dockutil --add '/Applications/Microsoft PowerPoint.app' --label 'Microsoft PowerPoint' --position 5 --no-restart $UserPlist
sudo -u $loggedInUser $dockutil --add '/Applications/PlaybackPro Plus X  IA - 4.0.5.app' --label 'PlaybackPro Plus X IA' --position 7 --no-restart $UserPlist
sudo -u $loggedInUser $dockutil --add '/Applications/PlaybackPro Plus X USB - 4.0.5.app' --label 'PlaybackPro Plus X USB' --position 8 --no-restart $UserPlist
sudo -u $loggedInUser $dockutil --add '/Applications/HandBrake.app' --label 'HandBrake' --position 9 --no-restart $UserPlist
sudo -u $loggedInUser $dockutil --add '/Applications/zoom.us.app' --label 'Zoom' --position 10 --no-restart $UserPlist
sudo -u $loggedInUser $dockutil --add '/Applications/QLab.app' --label 'QLab' --position 11 --no-restart $UserPlist
echo "Restarting Dock..."
sudo -u $loggedInUser $killall Dock

exit 0