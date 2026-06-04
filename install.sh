#!/bin/bash

# Med-Reminder Installation Script
# Licensed under GPL v3

echo "Installing Med-Reminder..."

# Create systemd user directory if it doesn't exist
mkdir -p ~/.config/systemd/user/

# Copy files to correct locations
cp med-reminder.service ~/.config/systemd/user/
cp med-reminder.timer ~/.config/systemd/user/
cp med-reminder.sh ~/
cp cthulhu.jpg ~/.local/bin/

# Make the script executable
chmod +x ~/med-reminder.sh

# Enable and start the timer
systemctl --user enable med-reminder.timer
systemctl --user start med-reminder.timer

echo "Med-Reminder installed successfully!"
echo "To change the reminder image replace ~/Pictures/cthulhu.jpg"
echo "To change medication times edit ~/.config/systemd/user/med-reminder.timer"