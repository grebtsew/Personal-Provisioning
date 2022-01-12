code --list-extensions

cat list.txt | while read line 
do
  echo $line
    code --install-extension $line
done
