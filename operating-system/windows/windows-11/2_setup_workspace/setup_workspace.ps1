# rewrite to use git!
# require git

$Destination= 'C:\Users\Daniel\Documents\Git\' 

foreach($line in Get-Content .\list.txt) {
    Write-Output $line 
    $name = $Line.split(" ")[1]
    $url = $Line.split(" ")[0]
    $curdist = $Destination + $name 

    git clone $url $curdist
    
}

foreach($line in Get-Content .\secrets.txt) {
    Write-Output $line 
    $name = $Line.split(" ")[1]
    $url = $Line.split(" ")[0]
    $curdist = $Destination + $name 

    git clone $url $curdist
    
    
}