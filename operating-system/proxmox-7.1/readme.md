# Proxmox 7.1-7

This folder contains backups of configs needed to setup proxmox with nested virtualization and pci forwarding.
Mainly for home work/gaming/coding environment with flexible reboots. This will not be useful for creating servers.
With setup scripts and backup scripts.

The workflow as planned should be:
1. First run the backup-script to collect your latest proxmox settings.
2. Change the settings and configs for you liking.
3. Use setup scripts to install your configs.
4. Use reset to restore old settings.
5. Add vm:s and such in the WebGui. 

Use the reboot and shutdown scripts for the convenience of not having to use Web-gui when changing os. With this setup no extra computer will be needed. It is recommended to own several computers while using proxmox!

**NOTE:** Setup depends on Backup and Reset depends on setup!
In order to run these script always run in the order backup -> setup -> reset.

**NOTE:** No images will be stored here!

**NOTE:** Remember that all settings are hardware dependent! This will probably not work on other pcs.

**NOTE:** remember that ubuntu will need you to run `chmod +x ./<script>.sh` before execution.

# AutoReboot and switch boot VM
Run this script in a VM to reboot with new vm id. Read more in folder README file.

On windows run 
`./reboot.bat <vmIDtoBoot>`

On linux run 
`./reboot.sh <vmIDtoBoot>`

**NOTE:** make sure ssh is among known hosts!

# AutoShutdown and switch boot VM
Run this script in a VM to shutdown with new vm id. Read more in folder README file.

On windows run `./shutdown.bat <vmIDtoBoot>`

On linux run `./shutdown.sh <vmIDtoBoot>`

**NOTE:** make sure ssh is among known hosts!

# AutoBackup
Run this script to download important files from proxmox. 

These files are backed up:
```
/etc/default/grub
/etc/modprobe.d/iommu_unsafe_interrupts.conf
/etc/modprobe.d/vfio.conf
/etc/modprobe.d/blacklist.conf 
/etc/modprobe.d/kvm.conf
/etc/pve/qemu-server/*.conf
/etc/modprobe.d/kvm-intel.conf
/etc/modules
```

On windows run `./backup.bat`

On linux run `./backup.sh`

# AutoSetup
Run this script to copy files from backup into your proxmox system and tmp store default files. Ends with a reboot.
This is very specific for my hardware but might be useful for speedier setup!

On windows run `./setup.bat`

On linux run `./setup.sh`

Use the reset scripts to reset proxmox to previous settings.

On windows run `./reset.bat`

On linux run `./reset.sh`

**NOTE:** These scripts might make proxmox stop working. I recommend entering safe mode and reset eventual problems using the added python scripts. 