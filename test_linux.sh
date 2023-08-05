docker build -t pp-test-ubuntu -f ./operating-system/linux/ubuntu/Dockerfile ./operating-system/linux/ubuntu/
docker run --name pp-test-ubuntu pp-test-ubuntu

docker build -t pp-test-manjaro -f ./operating-system/linux/manjaro/Dockerfile ./operating-system/linux/manjaro/
docker run --name pp-test-manjaro pp-test-manjaro

docker build -t pp-test-proxmox -f ./operating-system/linux/proxmox/Dockerfile ./operating-system/linux/proxmox/
docker run --name pp-test-proxmox pp-test-proxmox