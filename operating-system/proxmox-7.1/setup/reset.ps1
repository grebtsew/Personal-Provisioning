echo "This script is for reseting own setup!"
echo "About to reset proxmox to old config"

$IP="192.168.2.225"
echo $IP

echo "Credentials"
$credential = Get-Credential

$confirmation = Read-Host "Will now reset from .old files, if they are removed you might destroy the system! Are you Sure You Want To Proceed:"
if ($confirmation -eq 'y') {

echo "SSH"
$SSHsession=New-SSHSession -ComputerName $IP -Credential $credential -AcceptKey 
$SSHStream = New-SSHShellStream -Index $SSHsession.SessionId

foreach($line in Get-Content ..\backup\config\list.txt) {
    echo $line
    Invoke-SSHStreamShellCommand -ShellStream $SSHStream -Command "[ -f "$line.old" ] && rm -f $line || echo failed "
    Invoke-SSHStreamShellCommand -ShellStream $SSHStream -Command "mv $line.old $line"
}

Invoke-SSHStreamShellCommand -ShellStream $SSHStream -Command "update-grub"
Invoke-SSHStreamShellCommand -ShellStream $SSHStream -Command "reboot"

echo "Done, System will now reboot!"
}

