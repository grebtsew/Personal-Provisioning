
echo "About to backup proxmox"
echo "Use <vm id> as argument!"
IP="192.168.2.225"
echo -n Password: 
read -s password

read -r -p "Will now setup, you might destroy the system! Are you Sure You Want To Proceed. Are you sure? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    
echo "Start Setup"

echo "Store as old"
while IFS= read -r line
do
  echo $line
  sshpass -p $password ssh -n root@$IP "mv $line $line.old"

done < "../backup/config/list.txt"


echo "move new files"
while IFS= read -r line
do
  echo $line
  infile="$(basename $line)"
  dirname="$(dirname $line)"
  #echo $infile
  sshpass -p $password scp ../backup/config/$infile root@$IP:$dirname
done < "../backup/config/list.txt"

#sshpass -p $password ssh root@$IP "update-grub"
#sshpass -p $password ssh root@$IP "reboot"

echo "Done"
fi
