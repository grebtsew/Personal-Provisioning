# Run this on proxmox OS

import subprocess
import json
from sys import argv
import time

if __name__ == "__main__":
  if len(argv) < 2:
    print("No Arguments")
  else:
    # get all qm
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
  print("All done, reboot in 3 seconds!")
  time.sleep(3)
  subprocess.run(['reboot'], stdout=subprocess.PIPE)