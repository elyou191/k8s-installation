#!/bin/bash

# Now we'll initialize the control plane machine
sudo kubeadm config images pull
sudo kubeadm init 

