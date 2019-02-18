#!/bin/sh
export DOCKER_VERSION=18.06.1~ce~3-0~ubuntu
echo "running apt-get update and installing some packages"
sudo apt-get update && sudo apt-get install -yq apt-transport-https \
  linux-image-extra-$(uname -r) \
  linux-image-extra-virtual \
  ca-certificates

echo "add docker apt repository and gpg key"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable"

echo "installing docker"
sudo apt-get update && sudo apt-get install -yq docker-ce=$DOCKER_VERSION

echo "installing kubectl"
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl

echo "install minikube"
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube
sudo cp minikube /usr/local/bin && rm minikube

echo "install skaffold"
curl -Lo skaffold https://storage.googleapis.com/skaffold/releases/latest/skaffold-linux-amd64
chmod +x skaffold
sudo mv skaffold /usr/local/bin