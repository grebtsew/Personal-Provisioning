echo "This script will reboot pve node and auto switch reboot os for you!"

if [ $# -eq 0 ]; then
    read -p 'No VM id parameter added, second change to add here: (press enter to continue): ' 1
fi


echo "Use <vm id> as argument!"
IP="192.168.2.225"
echo -n Password: 
read -s password

#SCP
echo "SCP"
sshpass -p $password scp ./proxmox-reboot.py root@$IP:/ 

# SSH
echo "SSH"
sshpass -p $password ssh root@$IP "python3 /proxmox-reboot.py $1"


echo "Done, System will now reboot!"