# Setup system for Nested Virtualization and GPU

## Setup
Will rename old config files and move new ones to replace them, from ../backup/config, end with reboot.

Windows: `./setup.bat`

Ubuntu: `./setup.sh`

## Reset
Will reset to default settings using renamed old config files, end with reboot.

Windows: `./reset.bat`

Ubuntu: `./reset.sh`

**WARNING:** This might break you os if you have wrong hardware.
**Note:** remember that ubuntu will need you to run `chmod +x ./reset.sh` / `chmod +x ./setup.sh` before execution.