# Windows 11

## Setup windows environment using Choco

### HOW-TO install all

1. Go through `./1_wininstall_choco_list/list.txt` for all programs you want to install.
Double check that they exist on choco!

2. Go through `./2_setup_workspace/list.txt` for all repos to install. Put repos that you don't want to track in git in secret.txt
Set Destination in setup_workspace.ps1.

3. Install or uninstall:
```bash
# install in admin mode
./install.bat
```

```bash
# uninstall in admin mode
./uninstall.bat
```

4. Disable auto startup in activity manager

5. Go to `../../profiles` and update settings on some programs.

# Limitations
These scripts are only tested on Windows 11. They might work on other windows versions aswell.

# Known issues
Some of the choco programs changes versions and names, so some will probably fail.