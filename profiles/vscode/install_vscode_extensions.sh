code --list-extensions

foreach($line in get-content list.txt) {code --install-extension $($line)}

# Might want these also
# copilot
# c++
# python