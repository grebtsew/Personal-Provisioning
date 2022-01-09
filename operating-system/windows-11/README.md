# Windows 11

## Setup windows environment using Choco

### HOW-TO

Run these commando:s

```bash
# allow scripts to run
Set-ExecutionPolicy RemoteSigned

# enter administration mode
start-process PowerShell -verb runas 

#install in admin mode
./wininstall_choco_list/install_programs.ps1

#if wanted, setup workspace after this

#if wanted, setup profile data from /profiles after this

# dont forget to remove remote signed scripts!
Set-ExecutionPolicy RemoteSigned
```

```bash
# uninstall in admin mode
./wininstall_choco_list/uninstall_programs.ps1
```

# Limitations
These scripts are only tested on Windows 11. They might work on other windows versions aswell.