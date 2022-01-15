echo "This script will shutdown pve node and auto switch os for you!"
echo "Use <vm id> as argument!"
IP="192.168.2.225"
echo -n Password: 
read -s password

#SCP
echo "SCP"
sshpass -p $password scp ./proxmox-shutdown.py root@$IP:/ 

# SSH
echo "SSH"
sshpass -p $password ssh root@$IP "python3 /proxmox-shutdown.py $1"


echo "Done, System will now shutdown!"