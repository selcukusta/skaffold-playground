#!/bin/sh
echo 'sudo minikube start --vm-driver=none --cpus=1 --memory=1024' >> ~/.bashrc
echo 'sudo chown -R $USER /home/vagrant/.kube /home/vagrant/.minikube' >> ~/.bashrc
echo 'cd /vagrant/applications' >> ~/.bashrc