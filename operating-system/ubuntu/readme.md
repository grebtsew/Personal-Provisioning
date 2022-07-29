# Ubuntu 20.04 auto install

1. Update programs to install in `1_install_programs/install.sh`

2. Go through `2_setup_workspace/list.txt` for all repos to install. Put repos that you don't want to track in git in secret.txt
Set Destination in 2_setup_workspace/setup.sh.

3. Start installation

Make runnable:

`sudo chmod +x ./install.sh`

Run:

`sudo ./install.sh`

**NOTE**: several files will be downloaded, don't be alarmed, they will be removed after installation!