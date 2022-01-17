# Docker monitoring

This compose contains, in my opinion, the strongest monitor tools out there for docker.
It's Grafana that will start at localhost:3000 and communicate with prometheus.
Also starts Weavescope at localhost:4040, for full control of all running containers.


1. Install docker-compose, part of docker desktop on windows or macos!
2. Run `docker-compose up`