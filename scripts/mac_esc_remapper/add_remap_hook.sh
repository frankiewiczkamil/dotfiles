#! /bin/bash
sudo cp ~/dotfiles/scripts/mac_esc_remapper/remap.sh /Library/LaunchDaemons/remap.sh
sudo cp ~/dotfiles/scripts/mac_esc_remapper/remap.plist /Library/LaunchDaemons/remap.plist
sudo chown root:wheel /Library/LaunchDaemons/remap.sh
sudo chmod 755 /Library/LaunchDaemons/remap.sh
sudo chown root:wheel /Library/LaunchDaemons/remap.plist
sudo chmod 644 /Library/LaunchDaemons/remap.plist
sudo launchctl load /Library/LaunchDaemons/remap.plist