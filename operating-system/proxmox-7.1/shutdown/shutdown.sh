#
# BASH auto shutdown and change boot os proxmox script
#

echo "This script will shutdown pve node and auto switch os for you!"

if [ $# -eq 0 ]; then
    read -p 'No VM id parameter added, second change to add here: (press enter to continue): ' 1
fi

echo "Use <vm id> as argument!"
IP="192.168.2.225"
echo -n Password: 
read -s password

#SCP - send python script
echo "SCP - send python script"
sshpass -p $password scp ./proxmox-shutdown.py root@$IP:/ 

#SSH - run python script
echo "SSH - run python script"
sshpass -p $password ssh root@$IP "python3 /proxmox-shutdown.py $1"


echo "Done, System will now shutdown!"