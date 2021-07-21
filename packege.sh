#!/bin/bash

sudo apt-get update
sudo apt-get upgrade
sudo apt-get remove docker docker-engine docker.io -y
sudo apt install docker.io -y
sudo systemctl start docker -y
sudo systemctl enable docker
wget https://vtvivek713.s3.us-east-2.amazonaws.com/webapp.war
wget https://vtvivek713.s3.us-east-2.amazonaws.com/Dockerfile
sudo docker build -t customimage .
sudo docker run -d -p 8080:8080 --name coustomcoentener customimage /bin/bash
