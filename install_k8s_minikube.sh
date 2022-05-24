#!/bin/bash

sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo apt update
sudo install minikube-linux-amd64 /usr/local/bin/minikube
sudo apt-get install -y kubectl

