# Shutdown script to switch GPU OS without webgui

1. ssh once to pve node host and add to known hosts, (Important on linux!)

2. Change IP in the scripts! 

Windows: `./shutdown.ps1`

Ubuntu: `./shutdown.sh`

3. Run script:

windows: `./shutdown.bat <vmID>`

ubuntu: `./shutdown.sh <vmID>` (chmod +x!)

4. The computer will restart!

5. You might want to add this as a macro or env variable in your system, or shortcut.