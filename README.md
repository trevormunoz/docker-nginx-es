A docker setup to run elasticsearch behind an nginx reverse proxy. Very basic.

### To run 

1. Launch instance — security rules need only allow ports 80 & 22
2. Install docker for your [platform](https://docs.docker.com/installation/)
3. Install docker-compose ``sudo sh -c "curl -L https://github.com/docker/compose/releases/download/1.1.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose"``
4. Make executable `chmod +x /usr/local/bin/docker-compose`
5. Clone this repo and change into the directory
6. Run docker-compose up to build and start `sudo docker-compose up -d`
7. Check that processes are running `sudo docker-compose ps`

### :dumbwaiter

The dumbwaiter branch includes a python script that transforms the [NYPL's open data](http://menus.nypl.org/data) and loads it into the attached elasticsearch instance.

NB: This configuration has only been successfully tested on VMs with at least 8 GB of RAM
