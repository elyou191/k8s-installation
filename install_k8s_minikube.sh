#!/bin/bash

sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo apt update
sudo useradd -mU username -s /bin/bash
sudo echo username:password | chpasswd
sudo echo "username    ALL=(ALL:ALL) ALL" >> /etc/sudoers
sudo chown -R username /home/username
sudo usermod -aG docker username 
sudo newgrp docker
echo 2
sudo rm -rf /tmp/juju-mk*
sudo rm -rf /tmp/minikube.*
echo 3
su - username
minikube start --driver=docker
