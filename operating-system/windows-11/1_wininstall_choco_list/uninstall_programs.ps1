# Install a list of programs or atleast help keep track of programs that should probably be installed!

# Install Chocolatey
choco version

foreach($line in Get-Content .\list.txt) {
    choco uninstall $line -y
}
