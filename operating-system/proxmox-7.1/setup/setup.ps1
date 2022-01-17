echo "This script is for reseting own setup!"
echo "About to reset proxmox to old config"

$IP="192.168.2.225"
echo $IP

echo "Credentials"
$credential = Get-Credential

$confirmation = Read-Host "Will now setup, you might destroy the system! Are you Sure You Want To Proceed:"
if ($confirmation -eq 'y') {

echo "SSH"
$SSHsession=New-SSHSession -ComputerName $IP -Credential $credential -AcceptKey 
$SSHStream = New-SSHShellStream -Index $SSHsession.SessionId

foreach($line in Get-Content ..\backup\config\list.txt) {
    echo $line
    Invoke-SSHStreamShellCommand -ShellStream $SSHStream -Command "mv $line $line.old"
}

foreach($line in Get-Content ..\backup\config\list.txt) {
    echo $infile
    $infile = Split-Path $line -leaf
    Set-SCPItem -ComputerName $IP -Credential $credential -Destination $line -Path ..\backup\config\$infile
}

Invoke-SSHStreamShellCommand -ShellStream $SSHStream -Command "update-grub"
Invoke-SSHStreamShellCommand -ShellStream $SSHStream -Command "reboot"

echo "Done, System will now reboot!"
}

