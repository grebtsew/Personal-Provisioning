# Reboot script to switch GPU OS without webgui

1. ssh once to pve node host and add to known hosts

2. Change IP in the scripts! 

Windows: `./reboot.ps1`

Ubuntu: `./reboot.sh`

3. Run script:

windows: `./reboot.bat <vmID>`

ubuntu: `./reboot.sh <vmID>`

4. The computer will restart!

5. You might want to add this as a macro or env variable in your system, or shortcut.