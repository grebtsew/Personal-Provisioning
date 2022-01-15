echo "This script will reboot pve node and auto switch reboot os for you!"
echo "Use <vm id> as argument!"
IP="192.168.2.225"
echo -n Password: 
read -s password

echo "\n"
#SCP
echo "SCP"
sshpass -p $password scp ./proxmox-reboot.py root@$IP:/ 

echo "\n"
# SSH
echo "SSH"
sshpass -p $password ssh root@$IP "python3 /proxmox-reboot.py $1"


echo "\n"
echo "Done, System will now reboot!"