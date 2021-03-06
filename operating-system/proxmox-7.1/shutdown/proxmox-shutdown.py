# Run this on proxmox OS
"""
This is a help program i python for safely changing boot OS on proxmox and reboot.
"""
import subprocess
import json
from sys import argv
import time

if __name__ == "__main__":
  if len(argv) < 2:
    print("No Arguments")
  else:
    # get all qm vm ids
    result = subprocess.run(['cat', '/etc/pve/.vmlist'], stdout=subprocess.PIPE)
    obj = json.loads(result.stdout)
    print("")
    # Check if valid id
    if argv[1] in obj["ids"]:
      for vm in obj["ids"]:
        # clear onboot
        print(f"Set vm {vm} boot on start to {str(vm == argv[1])}")
        r = subprocess.run(['qm', 'set',  vm, '--onboot', str(vm == argv[1])], stdout=subprocess.PIPE)
    else:
      print("Id is no valid VM!")
      
  print("")
  print("All done, shutdown in 3 seconds!")
  time.sleep(3)
  subprocess.run(['shutdown','-h', 'now'], stdout=subprocess.PIPE)