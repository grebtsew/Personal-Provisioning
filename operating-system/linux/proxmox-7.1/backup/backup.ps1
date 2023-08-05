# Run the backup script on proxmox 

echo "About to backup proxmox"

$IP="192.168.2.225"
echo $IP

# Install posh if does not exist
echo "Checking if Posh-SSH is installed, press enter to continue..."
if (Get-Command 'Get-Credential' -errorAction SilentlyContinue){
 Install-Module -Name Posh-SSH # WARNING, this library might change!
}

echo "Credentials"
$credential = Get-Credential

foreach($line in Get-Content .\config\list.txt) {
    echo $line
    Get-SCPItem -ComputerName $IP -Credential $credential -Destination './config' -Path $line -PathType File -Force
}

echo "Backup vms"
Get-SCPItem -ComputerName $IP -Credential $credential -Destination './vms' -Path '/etc/pve/qemu-server/' -PathType Directory -Force

echo "Done"
