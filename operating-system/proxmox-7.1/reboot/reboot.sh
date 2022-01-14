$IP=192.168.2.225
echo -n Password: 
read -s password

#SCP
echo "SCP"
sshpass -p $password scp file.tar.gz root@$IP:/ 
scp './proxmox-reboot.py' /

# SSH
echo "SSH"
sshpass -p $password ssh root@$IP "python3 /proxmox-reboot.py $a"

echo "Done, System will now reboot!"