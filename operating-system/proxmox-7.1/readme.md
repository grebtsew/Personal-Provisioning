# Proxmox 7.1-7

This folder contains backups of configs needed to setup proxmox with nested virtualization and pci forwarding.
Mainly for home work/gaming/coding environment with flexible reboots. This will not be useful for createing servers.
With setup scripts and backup scripts.

**NOTE:** No images will be stored here!

**NOTE:** Remember that all settings are hardware dependent! This will probably not work on other pcs.

# AutoReboot and switch VM boot host
Run this script in a VM to reboot with new vm id. Read more in folder README file.

On windows run 
`./reboot.bat <vmIDtoBoot>`

On linux run 
`./reboot.sh <vmIDtoBoot>`

**NOTE:** make sure ssh is among known hosts!

# AutoShutdown and switch VM boot host
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
```


# AutoSetup
Run this script to setup an existing proxmox system. 
This is very specific for my hardware but might be useful for speedier setup!

