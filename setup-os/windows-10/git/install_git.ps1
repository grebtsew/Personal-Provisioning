Get-ExecutionPolicy

Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned -Force

Install-Module posh-git -Scope CurrentUser -Force

Import-Module posh-git

Add-PoshGitToProfile -AllHosts​​​​​​​

