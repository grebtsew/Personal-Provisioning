#!/usr/bin/env bash
# clone all repos from list.txt and secrets.txt

Destination='/home/'$USER'/git' 

while IFS= read -r line
do
  #echo $line
  name=$(echo $line | cut -d ' ' -f 2)
  url=$(echo $line | cut -d ' ' -f 1)
  
  curdist=$Destination/$name
  git clone $url $curdist
done < "./list.txt"



cat ./secrets.txt | while read line 
do
  echo $line
  name= echo $line | cut -d ' ' -f 2
  url= echo $line | cut -d ' ' -f 1
  curdist=$Destination+$name
  git clone $url $curdist
done

