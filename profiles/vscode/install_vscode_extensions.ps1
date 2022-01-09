code --list-extensions

foreach($line in Get-Content .\list.txt) {
    code --install-extension $($line)
}

# Might want these also
# copilot
# c++
# python