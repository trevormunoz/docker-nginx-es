A docker/fig setup to run elasticsearch behind an nginx reverse proxy. Very basic.

### To run on AWS

1. Launch instance — security rules need only allow ports 80 & 22
2. Install docker `sudo curl -sSL https://get.docker.io/ubuntu/ | sudo sh`
3. Install fig `sudo bash -c "curl L https://github.com/docker/fig/releases/download/1.0.1/fig-Linux-x86_64 > /usr/local/bin/fig"`
4. Make executable `sudo chmod +x /usr/local/bin/fig`
5. Clone this repo and change into the directory
6. Run fig up `sudo fig up -d`
7. Check that processes are running `sudo fig ps`
