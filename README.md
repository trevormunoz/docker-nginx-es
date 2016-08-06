A docker setup to run elasticsearch behind an nginx reverse proxy. Very basic.

**NB: No longer maintained. For my own purposes I [now use ansible](https://github.com/trevormunoz/automation/tree/master/elasticsearch-rig) to provision a VM**

### To run 

1. Launch instance — security rules need only allow ports 80 & 22
2. Install docker for your [platform](https://docs.docker.com/installation/)
3. Install docker-compose ``sudo sh -c "curl -L https://github.com/docker/compose/releases/download/1.1.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose"``
4. Make executable `chmod +x /usr/local/bin/docker-compose`
5. Clone this repo and change into the directory
6. Run docker-compose up to build and start `sudo docker-compose up -d`
7. Check that processes are running `sudo docker-compose ps`
