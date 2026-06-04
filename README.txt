Med-Reminder
============
A systemd based medication reminder for Linux that displays 
a fullscreen image at set times to ensure medications are 
never missed. Cannot be easily dismissed — relaunches every 
10 seconds for 5 minutes.

Licensed under GNU GPL v3 — Free forever, for everyone.

REQUIREMENTS
============
- Linux with systemd
- eog (Eye of GNOME image viewer)
  Install on Ubuntu/Pop!_OS: sudo apt install eog
  Install on Fedora/Bazzite: sudo rpm-ostree install eog

INSTALLATION
============
1. Download and unzip the package
2. Open terminal in the unzipped folder
3. Run: chmod +x install.sh
4. Run: ./install.sh
5. Done!

DEFAULT REMINDER TIMES
======================
- 12:00 PM (Noon)
- 6:00 PM
- 12:00 AM (Midnight)

CHANGING REMINDER TIMES
========================
Edit: ~/.config/systemd/user/med-reminder.timer
Change the OnCalendar lines to your medication times
Then run: systemctl --user restart med-reminder.timer

CHANGING THE REMINDER IMAGE
============================
Replace: ~/.local/bin/cthulu.jpg
Keep the same filename or edit med-reminder.sh to match

UNINSTALLING
============
systemctl --user stop med-reminder.timer
systemctl --user disable med-reminder.timer
rm ~/.config/systemd/user/med-reminder.service
rm ~/.config/systemd/user/med-reminder.timer
rm ~/.local/bin/med-reminder.sh
rm ~/.local/bin/cthulu.jpg

LICENSE
=======
GNU GPL v3 - See LICENSE file
This software is free and must remain free.