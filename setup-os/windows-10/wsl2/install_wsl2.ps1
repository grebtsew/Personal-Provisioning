# Enable WSL
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

# Enable ‘Virtual Machine Platform’ 
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform -NoRestart

# Set WSL 2 as default
wsl --set-default-version 2


# Install Ubuntu Distro
#https://social.technet.microsoft.com/Forums/windows/en-US/e5c5a26c-e8ba-439d-a0c0-074b475e0f1b/install-windows-store-apps-from-powershell?forum=w8itprogeneral
#https://superuser.com/questions/983986/install-windows-store-app-itself
