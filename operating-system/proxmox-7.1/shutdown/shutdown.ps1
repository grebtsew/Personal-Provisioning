# Run the shutdown script on proxmox with auto shutdown change to new device
# arg[0] = qm id to other device

$a = $args[0]

if ( ([string]::IsNullOrEmpty($a)))
{
    $a = Read-Host "No VM id parameter added, second change to add here: (press enter to continue)"
}

echo "About to shutdown proxmox with potential id change $a"

$IP="192.168.2.225"
echo $IP

# Install posh if does not exist
echo "Checking if Posh-SSH is installed, press enter to continue..."
if (Get-Command 'Get-Credential' -errorAction SilentlyContinue){
 Install-Module -Name Posh-SSH # WARNING, this library might change!
}

echo "Credentials"
$credential = Get-Credential

#SCP
echo "SCP"
Set-SCPItem -ComputerName $IP -Credential $credential -Destination '/' -Path './proxmox-shutdown.py'

# SSH
echo "SSH"
$SSHsession=New-SSHSession -ComputerName $IP -Credential $credential -AcceptKey 
$SSHStream = New-SSHShellStream -Index $SSHsession.SessionId
Invoke-SSHStreamShellCommand -ShellStream $SSHStream -Command "python3 /proxmox-shutdown.py $a"
echo "Done, System will now shutdown!"