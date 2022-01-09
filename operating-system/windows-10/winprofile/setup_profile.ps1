# Motivation : https://www.tomshardware.com/how-to/windows-10-settings-to-change

# Activate darkmode
echo " Activate Darkmode "
New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0

# Set Theme
echo " Set Titel Bar colors "
Test-Path $profile
mv -force ./windows10.deskthemepack "C:\Windows\Resources\Themes\windows10.theme"
rundll32.exe %SystemRoot%\system32\shell32.dll,Control_RunDLL %SystemRoot%\system32\desk.cpl desk,@Themes /Action:OpenTheme /file:"C:\Windows\Resources\Themes\windows10.theme"

# Unhide File Extensions and Hidden Files
function ShowFileExtensions() 
{
    Push-Location
    Set-Location HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced
    Set-ItemProperty . HideFileExt "0"
    Pop-Location
}
ShowFileExtensions();

$key = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced'
Set-ItemProperty $key Hidden 1
Set-ItemProperty $key HideFileExt 0
Set-ItemProperty $key ShowSuperHidden 1
Stop-Process -processname explorer

# Get rid of lock screen

Set-Location HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization" -Name "NoLockScreen" -Value 1 -PropertyType Dword
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization" -Name "NoLockScreen" -Value 1

# Prevent Windows From Re-Opening Apps On Restart

reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableAutomaticRestartSignOn /t reg_dword /d 1 /f
# https://superuser.com/questions/1229963/windows-10-disable-reopening-programs-after-restart-startup
# for /f "tokens=1-3,*" %%a in ('reg query HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce /v "Application Restart*" ^| findstr "Application Restart"') do reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce /v "%%a %%b %%c" /f

# Protect Your Privacy
# https://michlstechblog.info/blog/windows-10-powershell-script-to-protect-your-privacy/
# https://github.com/MichiMunich/Windows10-Privacy

# Switch Default Browsers
# https://stackoverflow.com/questions/17536405/cant-set-chrome-as-default-browser-from-powershell


# Enable System Protection / Create a Restore Point

#Enable-ComputerRestore -Drive "C:".

# Clear TaskBar

# Disable autostart
#https://www.kittell.net/code/powershell-disable-auto-run-windows/

# Enable Storage Sense to Save Space
# https://www.jaapbrasser.com/configure-storage-sense-using-powershell/
#Set-StorageSense -DisableStorageSense
#Set-StorageSense -EnableStorageSense -RemoveAppFiles $true` -ClearRecycleBin $true -Verbose

# uninstall crapware
# https://www.maketecheasier.com/remove-bloatware-from-windows10/
#Get-AppxPackage *appName* | Remove-AppxPackage
#Get-AppxPackage *3dbuilder* | Remove-AppxPackage
#Get-AppxPackage *windowsalarms* | Remove-AppxPackage
#Get-AppxPackage *windowscalculator* | Remove-AppxPackage
#Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage
#Get-AppxPackage *windowscamera* | Remove-AppxPackage
#Get-AppxPackage *officehub* | Remove-AppxPackage
#Get-AppxPackage *skypeapp* | Remove-AppxPackage
#Get-AppxPackage *getstarted* | Remove-AppxPackage
#Get-AppxPackage *zunemusic* | Remove-AppxPackage
#Get-AppxPackage *windowsmaps* | Remove-AppxPackage
#Get-AppxPackage *solitairecollection* | Remove-AppxPackage
#Get-AppxPackage *bingfinance* | Remove-AppxPackage
#Get-AppxPackage *zunevideo* | Remove-AppxPackage
#Get-AppxPackage *bingnews* | Remove-AppxPackage
#Get-AppxPackage *onenote* | Remove-AppxPackage
#Get-AppxPackage *people* | Remove-AppxPackage
#Get-AppxPackage *windowsphone* | Remove-AppxPackage
#Get-AppxPackage *photos* | Remove-AppxPackage
#Get-AppxPackage *windowsstore* | Remove-AppxPackage
#Get-AppxPackage *bingsports* | Remove-AppxPackage
#Get-AppxPackage *soundrecorder* | Remove-AppxPackage
#Get-AppxPackage *bingweather* | Remove-AppxPackage
#Get-AppxPackage *xboxapp* | Remove-AppxPackage
