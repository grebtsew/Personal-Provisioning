
echo "About to reset proxmox settings!"
echo "Use <vm id> as argument!"
IP="192.168.2.225"
echo -n Password: 
read -s password

echo ""

read -r -p "Will now reset from .old files, if they are removed you might destroy the system! Are you Sure You Want To Proceed. Are you sure? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then

echo "Start Reset"
while IFS= read -r line
do
  echo $line
  sshpass -p $password ssh -n root@$IP "[ -f "$line.old" ] && rm -f $line || echo failed "
  sshpass -p $password ssh -n root@$IP "mv $line.old $line"
done < "../backup/config/list.txt"

sshpass -p $password ssh root@$IP "update-grub"
sshpass -p $password ssh root@$IP "reboot"

echo "Done"

fi