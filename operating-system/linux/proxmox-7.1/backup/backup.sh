# Run the backup script on proxmox 

echo "About to backup proxmox"
echo "Use <vm id> as argument!"
IP="192.168.2.225"
echo -n Password: 
read -s password

echo "Backup config"
cat ./config/list.txt | while read line 
do
  echo $line
  sshpass -p $password scp root@$IP:$line  ./config 
done

echo "Backup vms"
sshpass -p $password scp -r root@$IP:/etc/pve/qemu-server/ ./vms
echo "Done, System will now reboot!"

echo "Done"