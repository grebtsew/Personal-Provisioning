Write-Output "----- Welcome -----"
$console = $host.ui.rawui
$console.backgroundcolor = "black"
$console.foregroundcolor = "white"
$colors = $host.privatedata
$colors.verbosebackgroundcolor = "Magenta"
$colors.verboseforegroundcolor = "Green"
$colors.warningbackgroundcolor = "Red"
$colors.warningforegroundcolor = "white"
$colors.ErrorBackgroundColor = "DarkCyan"
$colors.ErrorForegroundColor = "Yellow"
$colors.opa
set-location C:/Users/$env:UserName/Documents/Git/
clear-host