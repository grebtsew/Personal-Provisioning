# Install a list of programs or atleast help keep track of programs that should probably be installed!

# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco version

foreach($line in Get-Content .\list.txt) {
    choco install $line -y
}



# Windows update
Install-Module PSWindowsUpdate
