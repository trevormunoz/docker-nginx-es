A docker/fig setup to run elasticsearch behind an nginx reverse proxy. Very basic.

### To run 

1. Launch instance — security rules need only allow ports 80 & 22
2. Install docker for your [platform](https://docs.docker.com/installation/)
3. Install fig ``sudo sh -c "curl -L https://github.com/docker/fig/releases/download/1.0.1/fig-`uname -s`-`uname -m` > /usr/local/bin/fig"``
4. Make executable `sudo chmod +x /usr/local/bin/fig`
5. Clone this repo and change into the directory
6. Run fig up `sudo fig up -d`
7. Check that processes are running `sudo fig ps`

### :dumbwaiter

The dumbwaiter branch includes a python script that transforms the [NYPL's open data](http://menus.nypl.org/data) and loads it into the attached elasticsearch instance.

NB: This configuration has only been successfully tested on VMs with at least 8 GB of RAM
