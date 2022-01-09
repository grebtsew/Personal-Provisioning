# Will return True if file already exist
test-path $profile

# Create new file
if (-not (Test-Path -Path $profile.AllUsersAllHosts)){
    New-Item -ItemType File -Path $profile.AllUsersAllHosts -Force}