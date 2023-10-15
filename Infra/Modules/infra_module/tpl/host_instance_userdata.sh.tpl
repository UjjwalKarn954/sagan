#!/bin/bash
sudo yum update -y
sudo yum install -y curl --allowerasing
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube
sudo mv minikube /usr/local/bin/
sudo minikube start --driver=docker
