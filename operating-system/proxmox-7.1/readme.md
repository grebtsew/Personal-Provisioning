# Proxmox 7.1-7

This folder contains backups of configs needed to setup proxmox with nested virtualization and pci forwarding.
With setup scripts and backup scripts.

**NOTE:** No images will be stored here!

**NOTE:** Remember that all settings are hardware dependent! This will probably not work on other pcs.

# AutoReboot and switch VM boot host
Run this script in a VM to boot next one.

On windows run ./reboot.bat <vmIDtoBoot>
On linux run ./reboot.sh <vmIDtoBoot>


# AutoBackup
Run this script to download important files from proxmox.



# AutoSetup
Run this script to setup an existing proxmox system.
This is very specific for my hardware but might be useful for speedier setup!

